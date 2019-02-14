const mysql = require('mysql');
const mysqlConfig = require('./config.js');

const connection = mysql.createConnection(mysqlConfig);

function getNeighborhoods(callback) {
  connection.query('SELECT * FROM reviews WHERE neighborhood_id = 4', (err, response) => {
    if (err) {
      callback(err);
    } else {
      callback(null, response);
    }
  });
}

module.exports = {
  getNeighborhoods,
};
