const express = require('express');
const path = require('path');
const app = express();
app.use(express.static(path.join(__dirname, 'public')));
// Built in middleware
app.use(express.json());

// App routes
app.use('/movies', require('./controllers/movies'));
app.use('/cities', require('./controllers/cities'));
app.use('/societies', require('./controllers/societies'));
app.use('/games', require('./controllers/games'));
app.use('/classes', require('./controllers/classes'));

// Error handling & 404 middleware for when
// a request doesn't match any app routes
app.use(require('./middleware/not-found'));
app.use(require('./middleware/error'));

module.exports = app;
