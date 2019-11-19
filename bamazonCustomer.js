var mysql = require("mysql");
var inquirer = require("inquirer");
require("dotenv").config();
require("console.table");

var connection = mysql.createConnection({
    host: "localhost",

    // Your port; if not 3306
    port: 3306,

    // Your username
    user: "root",

    // Your password
    password: process.env.MY_SQL_PASS,
    database: "bamazon_DB"
});
// connect to mysql server and sql database 
connection.connect(function (err) {
    if (err) throw err;
    console.log("connected as id " + connection.threadId);
    // run the show function after connection is established to show the user the products being sold; then prompt user to start 
    //   start();
    // show();
    // connection.end();
    readProducts();
});

function readProducts() {
    var productsArr = []
    connection.query("SELECT * FROM products", function (err, res) {
        if (err) throw err;
        // Log all results of the SELECT statement
        console.table(res);
        start(res);



    });
}

// function which prompts the user for what action they want to take--
function start(products) {
    inquirer
        .prompt({
            name: "itemID",
            type: "input",
            message: "What is the ID of them item you would like to buy?"


        }).then(function (val) {

            var checkid = parseInt(val.itemID);

            console.log(checkid)
            var product = checkInventory(products, checkid);
            if (product){
                console.log("Next we need to ask the customer for quantity")

            } else {
                console.log("We couldn't find the item!")
            }
        })
    function checkInventory(products, checkid) {
        for (var i = 0; i < products.length; i++) {
            
            if (checkid === products[i].item_id) {
                return products[i];
            }

        }
        return null;
    }

    function checkQuantity(product){
        inquirer
        .prompt({
            name: "quantity",
            type: "input",
            message: "How many would you like to buy?"

        }).then(function (val) {
            var quantityInput = val.quantity
            if (quantityInput > product.stock_quanity){
                console.log("There is not enough quantity!")
            } else {
                console.log("There is enough, now onto the purchase")
            }
        })
    }

}