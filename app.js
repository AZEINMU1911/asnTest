//start
require('dotenv').config();
const client = require('./db');
const express = require('express');
const db = require('./db');

const app = express();
const port = process.env.PORT

app.use(express.json());

//GET
app.get('/api/countries', async (req,res) => {
    try{
        const result = await client.query('SELECT * FROM countries');
        res.json(result.rows)
    } catch(err) {
        console.error('Error querying database', err)
        res.status(500).json({error : 'Database Error'});
    };
});

app.listen(port , () => {
    console.log (`Server running on http://localhost:${port}`)
});