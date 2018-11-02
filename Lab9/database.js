
// node poackage that progrmmatically connects and runs queries on Postgres db:)
var pgp = require('pg-promise')();

const dbConfig = {
   host: 'localhost',
   port: 5432,
   database: 'lab6',
   user: 'postgres',
   password: 'admin'
};

var db = pgp(dbConfig);

module.exports = db;
