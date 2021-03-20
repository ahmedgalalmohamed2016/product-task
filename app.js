const express = require('express');
const mysql = require('mysql');
const bodyParser = require('body-parser');
const config = require('./configs/main');
const app = express();
let port = config.port;
const products = require('./routes/products.route');


app.use(function(req, res, next) {

    res.header("Access-Control-Allow-Origin", "*"); // update to match the domain you will make the request from
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");

    res.header('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, PATCH, DELETE');
    res.setHeader('Access-Control-Allow-Credentials', false);

    next();
});


app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

app.use('/products', products);

//create connection
const db = mysql.createConnection({
    host: config.dbHost,
    user: config.dbUser,
    password: config.dbPassword,
    database: config.dbDatabase,
})

db.connect((err) => {
    if (err) {
        throw err;
    }
    console.log("database connected");
})



app.listen(port, () => {
    console.log('Server is up and running on port numner ' + port);
});