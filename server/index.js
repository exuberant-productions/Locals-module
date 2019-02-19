const express = require('express');
const bodyParser = require('body-parser');
const path = require('path');
const db = require('../database/index.js');
// const neighborhood = require('');

const app = express();


app.set('port', 3004);
app.use(bodyParser.json());

app.use(express.static(path.join(__dirname, '/../public')));

app.get('/neighborhood/:neighborNum', (request, response) => {
  const neighborNumber = parseInt((request.params.neighborNum), 10);
  db.getNeighborhood(neighborNumber, (err, data) => {
    if (err) {
      throw (err);
    } else {
      response.end(JSON.stringify(data));
    }
  });
});

app.get('/homes/:neighborNum', (request, response) => {
  const neighborNumber = parseInt((request.params.neighborNum), 10);
  db.neighborHomes(neighborNumber, (err, data) => {
    if (err) {
      throw (err);
    } else {
      response.end(JSON.stringify(data));
    }
  });
});

app.get('/questions', (request, response) => {
  db.questions((err, data) => {
    if (err) {
      throw (err);
    } else {
      response.end(JSON.stringify(data));
    }
  });
});

app.get('/features/:neighborNum', (request, response) => {
  const neighborNumber = parseInt((request.params.neighborNum), 10);
  db.neighborHomes(neighborNumber, (err, data) => {
    if (err) {
      throw (err);
    } else {
      response.end(JSON.stringify(data));
    }
  });
});

app.get('/reviews/:neighborNum', (request, response) => {
  const neighborNumber = parseInt((request.params.neighborNum), 10);
  db.neighborHomes(neighborNumber, (err, data) => {
    if (err) {
      throw (err);
    } else {
      response.end(JSON.stringify(data));
    }
  });
});

app.listen(app.get('port'), () => {
  console.log(`listening on port ${app.get('port')}`);
});
