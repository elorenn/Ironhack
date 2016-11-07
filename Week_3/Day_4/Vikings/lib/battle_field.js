"use strict";

var Viking = require("./viking.js");
var Saxon = require("./saxon.js");
var Army = require("./army.js");



var vDead = [];
var vLiving = [];
var sDead = [];
var sLiving = [];


class BattleField {

	constructor(army1, army2) {
		this.army1 = army1;
		this.army2 = army2;
	};

	intro() {
		console.log("Nine vikings appear on the hillside. The sun glaring behind them, casting long ominous shadows.");
		console.log("The saxon villagers look up:");
		this.army2.saxonBattleCry();
		console.log("The villagers scatter.");
		console.log("The viking general rallies his troops:");
		this.army1.vikingBattleCry();
		console.log("The vikings charge down the hillside.");
		console.log("");
	};


	battle() {

		//gets a random warrior from each army:
		var vWarrior = this.army1.army[Math.floor(Math.random() * this.army1.army.length)];
		var sWarrior = this.army2.army[Math.floor(Math.random() * this.army2.army.length)];

		// var vWarrior = this.army1.army[0];
		// var sWarrior = this.army2.army[0];


		// vWarrior.stats();
		// sWarrior.stats();


		var op1Health = vWarrior.health;
		var op2Health = sWarrior.health;


		for (; op1Health >= 0 && op2Health >= 0 ; op1Health = vWarrior.health, op2Health = sWarrior.health )  {
			
			if (vWarrior.health > 0) {
				vWarrior.attack(sWarrior);
			// if warrior is alive, attacks the other	
			}; 

			if (sWarrior.health > 0) {
				sWarrior.attack(vWarrior);
			}; 

		};


		if (op1Health > 0) {
			vLiving.push(vWarrior.name);
		} else if (op1Health <= 0) {
			vDead.push(vWarrior.name);
		}

		if (op2Health > 0) {
			sLiving.push(sWarrior.name);
		} else if (op2Health <= 0) {
			sDead.push(sWarrior.name);
		}


	};

	war() {
		this.intro();
		
		this.battle();
		this.battle();
		this.battle();
		this.battle();
		this.battle();
		this.battle();
		this.battle();
		this.battle();
		this.battle();


		if (vLiving.length > 0) {
			console.log(`Viking Survivors: ` + vLiving.length + ` ` + `(` + vLiving + `)`);
		} else {
			console.log(`Viking Survivors: ` + vLiving.length);
		};
		if (vDead.length > 0) {
			console.log(`Viking Dead: ` + vDead.length + ` ` + `(` + vDead + `)`);
		} else {
			console.log(`Viking Dead: ` + vDead.length);
		};
		
		console.log("");

		console.log(`Saxon Survivors: ` + sLiving.length);
		console.log(`Saxon Dead: ` + sDead.length);
		
		console.log("");

		if (vLiving.length > sLiving.length) {
			console.log("Vikings WON!");
		}else if (sLiving.length > vLiving.length) {
			console.log("Saxons WON!");
		} else {
			console.log("It's a TIE!");
		};



	};


}


module.exports = BattleField; 
