// from data.js
var tableData = data;

// Select the submit button
var submit = d3.select("#filter-btn");

submit.on("click", function() {

// Prevent the page from refreshing
  d3.event.preventDefault();

// Select the input element and get the raw HTML node
   var inputElement = d3.select(".form-control");

// Get the value property of the input element
   var inputValue = inputElement.property("value");
 
   console.log(inputValue); 

var filteredData = tableData.filter(event => event.datetime == inputValue);

   console.log(filteredData); 
