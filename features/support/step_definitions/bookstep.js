const { Given, When, Then } = require('@cucumber/cucumber')
const { expect, assert } = require('chai')
let books = [];
let results = [];
Given('I have following books in the stores', function (dataTable) {
    
    books = dataTable.hashes();

});

When('I filter the books by {string}', function (author) {
    results = books.filter((book) => book.author == author);
});

Then('I found {int} books', function (count) {
    expect(results.length).to.equal(count);
    console.log(results);
    
});
