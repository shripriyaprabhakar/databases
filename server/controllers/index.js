//server/controllers/index.js defines the messages and users controllers that your application will use. 
//Skeletons of the controllers have already been created but you'll have to write out the details for their methods

var models = require('../models');
var express = require ('express');
// var mysql = require('schema.sql');

// const db = mssql.createConnection ({
//   host : 'localHost'

// })


var headers = {
  'access-control-allow-origin': '*',
  'access-control-allow-methods': 'GET, POST, PUT, DELETE, OPTIONS',
  'access-control-allow-headers': 'content-type, accept',
  'access-control-max-age': 10, // Seconds.
  'Content-Type': 'application/json'
};

module.exports = {
  messages: {
    get: function (req, res) {
      // utils.sendResponse(response, {results: messages});
      
      models.messages.get(res,cb) 
    }, // a function which handles a get request for all messages
    post: function (req, res) {} // a function which handles posting a message to the database
  },

  users: {
    // Ditto as above
    get: function (req, res) {},
    post: function (req, res) {}
  }
};

