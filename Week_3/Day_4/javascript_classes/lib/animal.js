"use strict";

// class Animal

class Animal {
// 		def initialize(name, breed, sound)
	constructor (name, breed, sound) {
		this.name = name;
		this.breed = breed;
		this.sound = sound;
	}

	chase() {
		console.log(`${this.name} is chasing cars`);
	}

	bark() {
		console.log(this.sound);
	}
}


module.exports = Animal;