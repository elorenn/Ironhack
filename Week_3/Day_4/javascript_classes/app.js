"use strict";

var Animal = require("./lib/animal.js");

console.log("");

var thunder = new Animal("Thunder", "German Shepherd", "woof?")

thunder.chase();
thunder.bark();

console.log("");

var bear = new Animal("Bear", "Border Collie", "uoooa")


bear.chase();
bear.bark();


// var thunder = {
// 	name: "Thunder",
// 	breed: "German Shepherd",
// 	sound: "woof?",

// 	chase: function () {
// 		console.log(`${this.name} is chasing cars.`);
// 	},

// 	bark: function () {
// 		console.log(this.sound);
// 	}
// };

// thunder.chase();
// thunder.bark();

// console.log("");

// var bear = {
// 	name: "Bear",
// 	breed: "Border Collie",
// 	sound: "uoooa?",

// 	chase: function () {
// 		console.log(`${this.name} is chasing cars.`);
// 	},

// 	bark: function () {
// 		console.log(this.sound);
// 	}
// };

// bear.chase();
// bear.bark();