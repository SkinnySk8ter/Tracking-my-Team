var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3308,

  // Your username
  user: "root",

  // Your password
  password: "silent7even",
  database: "myemployeesDB"
});

function runSearch() {
    inquirer
      .prompt({
        name: "action",
        type: "mylist",
        message: "What would you like to do?",
        choices: [
          "Find a Department",
          "Find employee",
          "Find a specific role",
        ]
      })
      .then(function(answer) {
        switch (answer.action) {
        case "Find a Department":
          departmentSearch();
          break;
  
        case "Find employee":
          employeeSearch();
          break;
  
        case "Find a specific role":
          titleSearch();
          break;
        }
      });
    }

    