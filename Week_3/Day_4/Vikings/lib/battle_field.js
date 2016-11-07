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


		console.log("Nine vikings appear on the hillside.");
		

		setTimeout(function () {
			console.log("The sun glaring behind them, casting long ominous shadows.");
			console.log("");
		}, 2000);

		setTimeout(function () {
			console.log("The saxon villagers look up:");
		}, 4000);	

		this.army2.saxonBattleCry();

		setTimeout(function () {
			console.log("The villagers scatter.");
			console.log("");
		}, 8000);	

		setTimeout(function () {
			console.log("The viking general rallies his troops:");
		}, 10000);

		this.army1.vikingBattleCry();

		setTimeout(function () {
			console.log("The vikings charge down the hillside.");
			console.log("");
		}, 20000);

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

		}


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
		
	
		for (var i = 0; i < this.army1.army.length; i++ ) {
			this.battle();

		};
		
	};

	recap() {

			console.log(`----------------------------------------------`);
			console.log("");

			if (vLiving.length > 0) {
				console.log(`Viking Survivors:`); 
				console.log(`---------------------`);
				console.log(vLiving.length + ` ` + `(` + vLiving + `)`);
			} else {
				console.log(`Viking Survivors: `);
				console.log(`---------------------`);
				console.log(vLiving.length);
			};
			if (vDead.length > 0) {
				console.log("");
				console.log(`Viking Casualties: `);
				console.log(`---------------------`);
				console.log(vDead.length + ` ` + `(` + vDead + `)`);
			} else {
				console.log(`Viking Casualties: `);
				console.log(`---------------------`);
				console.log(vDead.length);
			};
			
			console.log("");

			console.log(`Saxon Survivors: `);
			console.log(`---------------------`);
			console.log(sLiving.length);
			console.log("");
			console.log(`Saxon Casualties: `);
			console.log(`---------------------`);
			console.log(sDead.length);
			
			console.log("");

			setTimeout(function () {
				if (vLiving.length > sLiving.length) {
					console.log("Vikings WON!");
				}else if (sLiving.length > vLiving.length) {
					console.log("Saxons WON!");
				} else {
					console.log("It's a TIE!");
				};

				console.log("");
			}, 2000);	
	};
}


// http://stackoverflow.com/questions/3583724/how-do-i-add-a-delay-in-a-javascript-loop

module.exports = BattleField; 
