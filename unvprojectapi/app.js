var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var cors = require('cors');
const helmet = require('helmet');

var app = express();

app.use(helmet.xssFilter());
app.use(helmet.frameguard());
app.use(cors());
app.disable('etag');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());

require('./routes/ProjectRoutes')(app);


app.use(function(req, res, next) {
	console.log(req.body);
  next(createError(404));
});

//requested api not found in the server
app.use(function(err, req, res, next) {
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};
  res.status(err.status || 500);
  console.log(req.body);
  res.send({status: false, statusCode: 500, statusMessage: 'resource requested is not found'});
});

module.exports = app;

