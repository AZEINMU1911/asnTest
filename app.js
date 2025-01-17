// start
require('dotenv').config();
const client = require('./db');
const express = require('express');

const app = express();
const port = process.env.PORT || 3000; 

app.use(express.json());

// GET
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
        query += 'AND name ILIKE $' + (queryParams.length + 1);
        queryParams.push(`%${name}`);
    }
})

// Test route to check database connection
app.get('/api/test', async (req, res) => {
    try {
        const result = await client.query('SELECT NOW()');
        res.json(result.rows);
    } catch (err) {
        console.error('Error connecting to database', err);
        res.status(500).json({ error: 'Database connection error' });
    }
});

app.listen(port, () => {
    console.log(`Server running on http://localhost:${port}`);
});
