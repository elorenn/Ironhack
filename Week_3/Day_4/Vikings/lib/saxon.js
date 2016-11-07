"use strict";

var weapons = ["a rock", "a small knife", "a broad sword", "a wooden spear", "a battle-axe", "a scramasax"]

class Saxon {

	constructor() {
		this.name = "Anonymous Saxon Warrior";
		this.health = Math.floor(Math.random() * (90 - 50 + 1)) + 50;
		this.strength = Math.floor(Math.random() * (19 - 8 + 1)) + 8;
		this.weapon = weapons[Math.floor(Math.random() * weapons.length)];
	} 

	stats() {
		console.log("");
		console.log(`Name: ${this.name}`);
		console.log(`Health: ${this.health}`);
		console.log(`Strength: ${this.strength}`);
		console.log(`Weapon: ${this.weapon}`);
		console.log("");
	}

	attack(opponent) {

			opponent.health = opponent.health - this.strength;
			console.log("");
			console.log(`${this.name} attacked ${opponent.name} with ${this.weapon}!`);

		if (opponent.health > 0) {
			console.log(`${opponent.name}'s health is down to ${opponent.health}!`);
			console.log("");
		} else  {
			console.log(`WOAH, WOAH, STOP! ${opponent.name} is out cold!`);
			console.log("");
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
