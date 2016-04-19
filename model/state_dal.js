var mysql   = require('mysql');
var db  = require('./db_connection.js');

/* DATABASE CONFIGURATION */
var connection = mysql.createConnection(db.config);

exports.GetAll = function(callback) {
    var qry = "SELECT * from state;"
    connection.query(qry, function(err, result){
        callback(err, result);
    });
}