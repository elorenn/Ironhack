// in JavaScript, always use callbacks (asynchronous functions)
// for slow things

"use strict";

// fs is built-in:
var fs = require("fs");

// read must be installed (npm install read):
var read = require("read");

console.log("");
console.log("START OF PROGRAM");

// -------------------------------------------------------------


// readFile will allow us to know if there was an error or not
// in the retrival of our file:
// the first argument will always be the error (no matter what you call it)
// the second argument will always be the content (no matter what you call it)
fs.readFile("./movies.txt", "utf8", function(error, contentsOfFile) {
	// console.log("error", error);
	// console.log("");
	// console.log("contents:", contentsOfFile);

	if (error) {
		console.log("Oh no! There was a file read error.");
	}
	else {
		var moviesArray = contentsOfFile.split("\n");
		console.log(moviesArray);
	}
});


// function displayName (firstArg, inputName) {
// 	console.log(`Hello, user ${inputName}.`);
// }

function displayName (theError, inputName) {
	if (theError) {
		console.log("There is an error retrieving the input.");
	}
	else {
		console.log(`Hello, user ${inputName}.`);
	}
}



read({ prompt: "What is your name?"}, displayName);

console.log("");

function after5Seconds () {
	console.log("5 seconds");
}

// 5000 milliseconds = 5 seconds

setTimeout(after5Seconds, 5000);


setTimeout(function () {
	console.log("2 seconds are up")
}, 2000);


// even seemingly long loops are done almost instantly:
// (before the 2second and 5second functions are done): 
var i;

for (i = 1; i <= 500; i ++) {
	console.log(i);
}

console.log("loop is over");

console.log("");
console.log("END OF PROGRAM");
console.log("");

