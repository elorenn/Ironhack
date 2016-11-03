"use strict";

class Car {

	constructor(model, noise) {
		this.model = model;
		this.noise = noise;
		this.wheels = "4";
	}

	startEngine() {
		console.log(this.noise);
	}

	about() {
		console.log(`This is a ${this.model} with ${this.wheels}-wheel drive.`);
	}
}

module.exports = Car; 