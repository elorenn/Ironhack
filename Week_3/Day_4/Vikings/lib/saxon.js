"use strict";

class Saxon {

	constructor {
		this.health = Math.floor(Math.random() * (80 - 30 + 1)) + 30;
		this.strength = Math.floor(Math.random() * (10 - 2 + 1)) + 2;
	} 

	function getRandomInt(min, max) {
  		return Math.floor(Math.random() * (max - min + 1)) + min;
	}

}

module.exports = Saxon; 

// VIKING:
// highest health = 100
// lowest health = 50
// stop before = health < 1 
// highest strength = 15
// lowest strength = 5
// max rounds = 20

// SAXON:
// highest health = 80
// lowest health = 30
// stop before = health < 1 
// highest strength = 10
// lowest strength = 2
// max rounds = 20