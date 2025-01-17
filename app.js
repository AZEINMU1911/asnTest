//start
require('dontenv').config();
const db = require('./db');

const app = express();
const port = process.env.PORT

app.use(express.json());

//GET
app.get('/api/data')