"use strict";

class Saxon {

	constructor() {
		this.name = "Anonymous Saxon Warrior"
		this.health = Math.floor(Math.random() * (80 - 30 + 1)) + 30;
		this.strength = Math.floor(Math.random() * (15 - 5 + 1)) + 5;
	} 

	stats() {
		console.log("");
		console.log(`Name: ${this.name}`);
		console.log(`Health: ${this.health}`);
		console.log(`Strength: ${this.strength}`);
		console.log("");
	}

	attack(opponent) {
		
		opponent.health = opponent.health - this.strength;
		console.log("");
		console.log(`${this.name} attacked ${opponent.name}!`);

		if (opponent.health > 0) {
			console.log(`${opponent.name}'s health is down to ${opponent.health}!`);
			console.log("");
		} else if (opponent.health <= 0) {
			console.log(`${opponent.name} died!`);
			console.log(`${this.name} won!`);
			console.log("");
		}

	}
	
}

module.exports = Saxon; 

// VIKING:
// highest health = 100
// lowest health = 60
// stop before = health < 1 
// highest strength = 20
// lowest strength = 10


// SAXON:
// highest health = 80
// lowest health = 30
// stop before = health < 1 
// highest strength = 15
// lowest strength = 5
