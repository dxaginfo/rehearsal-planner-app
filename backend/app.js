const express = require('express');
const app = express();
app.use(express.json());

app.get('/', (req, res) => {
  res.send('Rehearsal Scheduler API');
});

// Stub endpoints for rehearsal scheduling (to be expanded)

module.exports = app;
