"use strict";

var weapons = ["a battle-axe", "a hammer", "a sword", "a spear", "two javelins", "a large knife", "a bow and arrow"]

class Viking {

	constructor(name) {
		this.name = name;
		this.health = Math.floor(Math.random() * (100 - 60 + 1)) + 60;
		this.strength = Math.floor(Math.random() * (20 - 10 +1)) + 10;
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

		// var vDead = [];
		// var vLiving = [];

		// var sDead = [];
		// var sLiving = [];
		
			opponent.health = opponent.health - this.strength;
			console.log("");
			console.log(`${this.name} attacked ${opponent.name} with ${this.weapon}!`);

		if (opponent.health > 0) {
			console.log(`${opponent.name}'s health is down to ${opponent.health}!`);
			console.log("");
		} else  {
			console.log(`WOAH, WOAH, STOP! ${opponent.name} is out cold!`);
			console.log(`${this.name} won!`);
			console.log("");

		}

		// if (this.health > 0) {
		// 	vLiving.push(this.name);
		// } else if (this.health <= 0){
		// 	vDead.push(this.name);
		// }

		// console.log(`Alive: `+ vLiving + sLiving);
		// console.log(`Dead: ` + vDead + sDead);
	}
}

module.exports = Viking; 


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


// would be cool if each had a list of weapons and when you attack, it randomly picks one.
