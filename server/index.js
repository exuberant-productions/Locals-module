const express = require('express');
const bodyParser = require('body-parser');
const db = require('../database/index.js')
const app = express();


app.set('port', 3004);
app.use(bodyParser.json());

app.use(express.static(__dirname + '/../public'));

app.get('/neighborhood/:neighborNum', (request, response) => {
  console.log(request.params.neighborNum);
  console.log('working!');
  db.getNeighborhoods((err, data) => {
    if (err) {
      throw (err);
    } else {
      response.end(JSON.stringify(data));
    }
  });
  // response.end(JSON.stringify({sup: "hi"}));
});

app.listen(app.get('port'), () => {
  console.log('running!');
});

