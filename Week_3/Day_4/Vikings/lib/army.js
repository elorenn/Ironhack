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
		console.log("");
		console.log(`"` + `Odin owns you all!` + `"`);
		console.log(`"` + `Shatter and break their spirits! Make shields tremble!` + `"`);
		console.log(`"` + `Uproot their hope! Release the warcry with an echo of steel:` + `"`);
		console.log(`* * *` + `"` + `BARBARIC YAWPPPP!` + `"` + `* * *`);
		console.log("");
	};

	saxonBattleCry() {
		console.log("");
		console.log(`"` + `The vikings are coming! RUNNNNN!!!` + `"`);
		console.log("");
	};

}

module.exports = Army;


