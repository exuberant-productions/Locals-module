const mysql = require('mysql');
const mysqlConfig = require('./config.js');

const connection = mysql.createConnection(mysqlConfig);

const getNeighborhoods = function (callback) {
  connection.query('SELECT * FROM reviews WHERE neighborhood_id = 4', function (err, response, field) {
    // console.log('stuff');
    // console.log(response);
    if (err) {
      callback(err);
    } else {
      return callback(null, response);
    }
  });
} 

module.exports = {
  getNeighborhoods
}
