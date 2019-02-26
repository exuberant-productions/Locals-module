const mysql = require('mysql');
const mysqlConfig = require('./config.js');

const connection = mysql.createConnection(mysqlConfig);

function home(number, callback) {
  connection.query(`SELECT * FROM homes WHERE id = ${number}`, (err, response) => {
    if (err) {
      console.log("here");
      callback(err);
    } else {
      callback(null, response);
    }
  });
}

function getNeighborhood(number, callback) {
  connection.query(`SELECT * FROM neighborhoods WHERE id = ${number}`, (err, response) => {
    if (err) {
      callback(err);
    } else {
      callback(null, response);
    }
  });
}

function neighborHomes(number, callback) {
  connection.query(`SELECT * FROM homes WHERE neighborhood_id = ${number}`, (err, response) => {
    if (err) {
      callback(err);
    } else {
      callback(null, response);
    }
  });
}

function questions(callback) {
  connection.query(`SELECT * FROM feature_questions`, (err, response) => {
    if (err) {
      callback(err);
    } else {
      callback(null, response);
    }
  });
}

function featureStats(number, callback) {
  connection.query(`SELECT * FROM feature_stats WHERE neighborhood_id = ${number}`, (err, response) => {
    if (err) {
      callback(err);
    } else {
      callback(null, response);
      console.log("here");

    }
  });
}

function reviews(number, callback) {
  connection.query(`SELECT * FROM reviews WHERE neighborhood_id = ${number}`, (err, response) => {
    if (err) {
      callback(err);
    } else {
      callback(null, response);
    }
  });
}

module.exports = {
  home,
  getNeighborhood,
  neighborHomes,
  questions,
  featureStats,
  reviews,
};
