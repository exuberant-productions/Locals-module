const express = require('express');
const bodyParser = require('body-parser');
const path = require('path');
const db = require('../database/index.js');

const app = express();


app.set('port', 3004);
app.use(bodyParser.json());

app.use(express.static(path.join(__dirname, '/../public')));

app.get('/neighborhood/:neighborNum', (request, response) => {
  db.getNeighborhoods((err, data) => {
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
