"use strict";

var Viking = require("./viking.js");
var Saxon = require("./saxon.js");

class PitFight {

	constructor(opponent1, opponent2) {
		this.opponent1 = opponent1;
		this.opponent2 = opponent2;
	}

	introduce() {
		console.log("Two Opponents Face Off:");
		console.log("------------------------");
		//console.log(this.opponent1.stats() + `vs` + this.opponent2.stats());
		this.opponent1.stats();
		console.log("vs");
		this.opponent2.stats();
		console.log("------------------------");
	}

	train() {
		this.introduce();

		var op1Health = this.opponent1.health;
		var op2Health = this.opponent2.health;

		var vDead = [];
		var vLiving = [];

		var sDead = [];
		var sLiving = [];

		for (; op1Health >= 0 && op2Health >= 0 ; op1Health = this.opponent1.health, op2Health = this.opponent2.health )  {
			
			if (this.opponent1.health > 0) {
				this.opponent1.attack(this.opponent2);
			} 

			if (this.opponent2.health > 0) {
				this.opponent2.attack(this.opponent1);
			} 

		}

		if (op1Health > 0) {
			vLiving.push(this.opponent1.name);
		} else if (op1Health <= 0) {
			vDead.push(this.opponent1.name);
		}

		if (op2Health > 0) {
			sLiving.push(this.opponent2.name);
		} else if (op2Health <= 0) {
			sDead.push(this.opponent2.name);
		}

		console.log(`Winner: `+ vLiving + sLiving);
		console.log(`Loser: ` + vDead + sDead);
	}
}


module.exports = PitFight; 


// max number of turns: 10 
// while turns > 0
// while opponent.health >= 1 or > 0 