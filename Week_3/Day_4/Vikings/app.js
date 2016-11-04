"use strict";

var Viking = require("./lib/viking.js");
var Saxon = require("./lib/saxon.js");
var PitFight = require("./lib/pit_fight.js");

console.log("");

// My Viking Army (one for each of the nine realms): 
var viking1 = new Viking("Freyja")
var viking2 = new Viking("Freki")
var viking3 = new Viking("Vak")
var viking4 = new Viking("Hel")
var viking5 = new Viking("Bragi")
var viking6 = new Viking("Sif")
var viking7 = new Viking("Sigyn")
var viking8 = new Viking("Ziu")
var viking9 = new Viking("Frigg")

// viking2.stats();
// viking9.stats();
// viking2.attack(viking9);


var fight1 = new PitFight(viking1, viking2);
//var fight2 = new PitFight(viking3, viking4);

fight1.battle();
//fight2.battle();


// --------------------------------------------
// var saxon1 = new Saxon()
// var saxon2 = new Saxon()

// saxon1.stats();
// saxon2.stats();


// viking2.attack(saxon1);

// console.log("");

// saxon2.attack(viking1);