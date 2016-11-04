"use strict";

class Viking {

	constructor(name) {
		this.name = name;
		this.health = Math.floor(Math.random() * (100 - 50 + 1)) + 50;
		this.strength = Math.floor(Math.random() * (15 - 5 +1)) + 5;
	} 

	stats() {
		console.log("");
		console.log(`Name: ${this.name}`);
		console.log(`Health: ${this.health}`);
		console.log(`Strength: ${this.strength}`);
		console.log("");
	}

	attack(opponent) {
		opponent.health = opponent.health - this.strength
		console.log(`${this.name} attacked ${opponent.name}!`)
		console.log(`${opponent.name}'s health is down to ${opponent.health}!`);
	}
}

module.exports = Viking; 


// VIKING:
// highest health = 100
// lowest health = 50
// stop before = health < 1 
// highest strength = 15
// lowest strength = 5


// SAXON:
// highest health = 80
// lowest health = 30
// stop before = health < 1 
// highest strength = 10
// lowest strength = 2


// would be cool if each had a list of weapons and when you attack, it randomly picks one.
