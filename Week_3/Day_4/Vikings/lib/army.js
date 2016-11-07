"use strict";

var Viking = require("./viking.js");
var Saxon = require("./saxon.js");

class Army {

	constructor() {
		this.army = [];
	}

	addWarrior(warrior) {
		this.army.push(warrior);
		//add warriors to your army
	};


	vikingBattleCry() {

		setTimeout(function () {
			console.log("");
			console.log(`"` + `Odin owns you all!` + `"`);
			console.log("");
		}, 12000);

		setTimeout(function () {
			console.log(`"` + `Shatter and break their spirits! Make their shields tremble!` + `"`);
			console.log("");
		}, 14000);	

		setTimeout(function () {	
			console.log(`"` + `Uproot their hope! Release the warcry with an echo of steel:` + `"`);
			console.log("");
		}, 16000);	

		setTimeout(function () {
			console.log(`* * *` + `"` + `BARBARIC YAWPPPP!` + `"` + `* * *`);
			console.log("");
		}, 18000);	

	};

	saxonBattleCry() {
		setTimeout(function () {
			console.log("");
			console.log(`"` + `The vikings are coming! RUNNNNN!!!` + `"`);
			console.log("");
		}, 6000);
	};

}

module.exports = Army;


