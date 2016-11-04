"use strict";

var Viking = require("./lib/viking.js");
var Saxon = require("./lib/saxon.js");
var PitFight = require("./lib/pit_fight.js");
var BattleField = require("./lib/battle_field.js");

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


var saxon1 = new Saxon()
var saxon2 = new Saxon()
var saxon3 = new Saxon()
var saxon4 = new Saxon()
var saxon5 = new Saxon()
var saxon6 = new Saxon()
var saxon7 = new Saxon()
var saxon8 = new Saxon()
var saxon9 = new Saxon()




var training1 = new PitFight(viking1, viking2);
//var fight2 = new PitFight(viking3, viking4);

training1.battle();
//fight2.battle();

