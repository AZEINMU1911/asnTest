// start
require('dotenv').config();
const { resolveSoa } = require('dns');
const client = require('./db');
const express = require('express');

const app = express();
const port = process.env.PORT || 3000; 

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

//GET Pagination and filter
app.get('/api/countries', async (req,res) => {
    const { page = 1, limit = 10, name, capital, code} = req.querry;
    const offset = (page - 1) * limit;

    let query = 'SELECT * FROM countries WHERE true';
    const queryParams = [];

    if (name){
        query += 'AND name ILIKE $' + (queryParams.length + 1);
        queryParams.push(`%${name}`);
    }
    if (capital){
        query += 'AND capital ILIKE $' + (queryParams.length + 1);
        queryParams.push(`%${capital}`);
    }
    if (code){
        query += 'AND code ILIKE $' + (queryParams.length + 1);
        queryParams.push(`%${code}`);
    }

    query += ' LIMIT $' + (queryParams.length + 1) + ' OFFSET $' + (queryParams.length + 2);
    queryParams.push(limit, offset);

    try {
        const result = await client.query(query, queryParams);
        res.json(result.rows);
    } catch (err) {
        console.error ('Error filtering Database', err);
        res.status(500).json({error: 'Database Error'})
    }
})

//GET single country by code
app.get('/api/country/code/:code', async (req,res) => {
    const {code} = req.params;
    try {
        const result = await client.query('SELECT * FROM countries WHERE code = $1', [code]);
        if (result.rows.length === 0 ){
            return res.status(404).json({error : 'Country not found'});
        }  res.json(result.rows[0]);
    } catch (err) {
        res.status(500).json({error : 'Database error'});
    }
});

//GET single country by name and language (id or en)
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

/* Test route to check database connection
app.get('/api/test', async (req, res) => {
    try {
        const result = await client.query('SELECT NOW()');
        res.json(result.rows);
    } catch (err) {
        console.error('Error connecting to database', err);
        res.status(500).json({ error: 'Database connection error' });
    }
});
*/
app.listen(port, () => {
    console.log(`Server running on http://localhost:${port}`);
});
