"use strict";

var Viking = require("./viking.js");
var Saxon = require("./saxon.js");

class Army {

	constructor() {
		this.Army = [];
	}

	addWarrior(warrior){
		this.Army.push(warrior);
		//add warriors to your army
	};

}

module.exports = Army;