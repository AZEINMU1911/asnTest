// Start
require('dotenv').config();
const client = require('./db');
const express = require('express');
const { body, validationResult } = require('express-validator');

const app = express();
const port = process.env.PORT; 

app.use(express.json());

// GET all countries
app.get('/api/countries', async (req, res) => {
    try {
        const result = await client.query('SELECT * FROM countries');
        res.json(result.rows);
    } catch (err) {
        console.error('Error querying database', err);
        res.status(500).json({ error: 'Database Error' });
    }
});

// GET Pagination and filter
app.get('/api/countries', async (req, res) => {
    const { page = 1, limit = 10, name, capital, code } = req.query;
    const offset = (page - 1) * limit;

    let query = 'SELECT * FROM countries WHERE true';
    const queryParams = [];
   
    if (name) {
        query += ' AND name ILIKE $' + (queryParams.length + 1);
        queryParams.push(`%${name}%`); 
    }
    if (capital) {
        query += ' AND capital ILIKE $' + (queryParams.length + 1);
        queryParams.push(`%${capital}%`);
    }
    if (code) {
        query += ' AND code ILIKE $' + (queryParams.length + 1);
        queryParams.push(`%${code}%`);
    }

    query += ' LIMIT $' + (queryParams.length + 1) + ' OFFSET $' + (queryParams.length + 2);
    queryParams.push(limit, offset);

    try {
        const result = await client.query(query, queryParams);  
        res.json(result.rows); 
    } catch (err) {
        console.error('Error querying database', err);
        res.status(500).json({ error: 'Database Error' });
    }
});

// GET single country by name and language (id or en)
app.get('/api/countries/name/:name/lang/:lang', async (req, res) => {
    const { name, lang } = req.params;
    try {
        const result = await client.query(
            'SELECT * FROM countries WHERE name ->> $1 = $2', [lang, name]
        );
        if (result.rows.length === 0) {
            return res.status(404).json({ error: 'Country not found' });
        }
        res.json(result.rows[0]);
    } catch (err) {
        console.error('Error querying database', err);
        res.status(500).json({ error: 'Database Error' });
    }
});

// POST country with validation
app.post('/api/countries', [
    body('name').not().isEmpty().withMessage('Name is required'),
    body('capital').not().isEmpty().withMessage('Capital is required'),
    body('flag').not().isEmpty().withMessage('Flag URL is required'),
    body('code').not().isEmpty().withMessage('Country code is required'),
], async (req, res) => {
    
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
        return res.status(400).json({ errors: errors.array() });
    }

    const { name, capital, flag, code, alt_code } = req.body;
    try {
        const result = await client.query(
            'INSERT INTO countries(name, capital, flag, code, alt_code) VALUES($1, $2, $3, $4, $5) RETURNING *',
            [name, capital, flag, code, alt_code]
        );
        res.status(201).json(result.rows[0]);
    } catch (err) {
        console.error('Error inserting data', err);
        res.status(500).json({ error: 'Database Error' });
    }
});

// Start the server
app.listen(port, () => {
    console.log(`Server running on http://localhost:${port}`);
});
