// Dependencies
var express = require("express");
var inquirer = require("inquirer");
var mysql = require("mysql");

// Create express app instance.
var app = express();

// Set the port of our application
// process.env.PORT lets the port be set by Heroku
var PORT = process.env.PORT || 8080;

// MySQL DB Connection Information (remember to change this with our specific credentials)
var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "2354",
  database: "employee_info_db"
});

// Initiate MySQL Connection.
connection.connect(function(err) {
  if (err) {
    console.error("error connecting: " + err.stack);
    return;
  }
  console.log("connected as id " + connection.threadId);
});

// Routes
app.get("/cast", function(req, res) {

  connection.query("SELECT * FROM name", function(err, result) {
    if (err) throw err;
  
    var html = "<h1> Seinfeld </h1>";


    html += "<ul>";

    for (var i = 0; i < result.length; i++) {
      html += "<li><p> ID: " + result[i].id + "</p>";
      html += "<p>Name: " + result[i].name + " </p></li>";
      html += "<p>Coolness Points: " + result[i].coolness_points + " </p></li>";
      html += "<p>Atitude: " + result[i].attitude + " </p></li>";
    }


    app.get("/coolness-points", function(req, res) {

        connection.query("SELECT * FROM name", function(err, result) {
          if (err) throw err;
        
          var html = "<h1> Seinfeld </h1>";
      
      
          html += "<ul>";
      
          for (var i = 0; i < result.length; i++) {
            html += "<li><p> ID: " + result[i].id + "</p>";
            html += "<p>Name: " + result[i].name + " </p></li>";
            html += "<p>Coolness Points: " + result[i].coolness_points + " </p></li>";
            html += "<p>Attitude: " + result[i].attitude + " </p></li>";
          }


app.get("attitude-chart/:att ", function(req, res) {

            connection.query("SELECT * FROM attitude", function(err, result) {
              if (err) throw err;
            
              var html = "<h1> Seinfeld </h1>";
          
          
              html += "<ul>";
          
              for (var i = 0; i < result.length; i++) {
                html += "<li><p> ID: " + result[i].id + "</p>";
                html += "<p>Name: " + result[i].name + " </p></li>";
                html += "<p>Coolness Points: " + result[i].coolness_points + " </p></li>";
                html += "<p>Attitude: " + result[i].attitude + " </p></li>";
              }

    // We close our unordered list.
    html += "</ul>";

    // Finally we send the user the HTML file we dynamically created.
    res.send(html);
  });
});

// Start our server so that it can begin listening to client requests.
app.listen(PORT, function() {
  // Log (server-side) when our server has started
  console.log("Server listening on: http://localhost:" + PORT);
});