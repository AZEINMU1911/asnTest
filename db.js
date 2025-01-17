require ('dontenv').config();
const {Clients} = require('pg');

const client = new Client ({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    pasword: process.env.DB_PASSWORD,
    database: process.env.DB_NAME,
    port: process.env.DB_PORT || 5432,
});

client.connect();
module.exports = client;
