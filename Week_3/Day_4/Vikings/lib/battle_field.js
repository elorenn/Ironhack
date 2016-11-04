"use strict";

var Viking = require("./viking.js");
var Saxon = require("./saxon.js");
var Army = require("./army.js");


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
		this.intro();

		//gets a random warrior from each army:
		var vWarrior = this.army1.army[Math.floor(Math.random() * this.army1.army.length)];
		var sWarrior = this.army2.army[Math.floor(Math.random() * this.army2.army.length)];


		console.log(vWarrior);
		console.log(sWarrior);
	
		

	};

}

module.exports = BattleField; 
