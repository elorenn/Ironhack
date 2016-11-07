"use strict";

var Viking = require("./lib/viking.js");
var Saxon = require("./lib/saxon.js");
var PitFight = require("./lib/pit_fight.js");
var Army = require("./lib/army.js");
var BattleField = require("./lib/battle_field.js");


console.log("");

// The Viking Army (one for each of the nine realms): 
var viking1 = new Viking("Freyja")
var viking2 = new Viking("Freki")
var viking3 = new Viking("Vak")
var viking4 = new Viking("Hel")
var viking5 = new Viking("Bragi")
var viking6 = new Viking("Sif")
var viking7 = new Viking("Sigyn")
var viking8 = new Viking("Ziu")
var viking9 = new Viking("Frigg")


var vikingArmy = new Army();

vikingArmy.addWarrior(viking1);
vikingArmy.addWarrior(viking2);
vikingArmy.addWarrior(viking3);
vikingArmy.addWarrior(viking4);
vikingArmy.addWarrior(viking5);
vikingArmy.addWarrior(viking6);
vikingArmy.addWarrior(viking7);
vikingArmy.addWarrior(viking8);
vikingArmy.addWarrior(viking9);

// console.log(vikingArmy);
// console.log("");

// vikingArmy.vikingBattleCry();
//vikingArmy.battleCry();

console.log("");

// ----------------------------------

// The Saxon Army: 
var saxon1 = new Saxon()
var saxon2 = new Saxon()
var saxon3 = new Saxon()
var saxon4 = new Saxon()
var saxon5 = new Saxon()
var saxon6 = new Saxon()
var saxon7 = new Saxon()
var saxon8 = new Saxon()
var saxon9 = new Saxon()


var saxonArmy = new Army();

saxonArmy.addWarrior(saxon1);
saxonArmy.addWarrior(saxon2);
saxonArmy.addWarrior(saxon3);
saxonArmy.addWarrior(saxon4);
saxonArmy.addWarrior(saxon5);
saxonArmy.addWarrior(saxon6);
saxonArmy.addWarrior(saxon7);
saxonArmy.addWarrior(saxon8);
saxonArmy.addWarrior(saxon9);

// console.log(saxonArmy);
// console.log("");

// saxonArmy.saxonBattleCry();

//saxonArmy.battleCry();

console.log("");

// Battle:
// ----------------------------------

var theWar = new BattleField(vikingArmy, saxonArmy); 

theWar.intro();

//theWar.war();

setTimeout(function () {
	theWar.war();
}, 23000);

setTimeout(function () {
	theWar.recap();
}, 26000);

// Training (aka Pit Fight):
// ----------------------------------

// var training1 = new PitFight(viking1, viking2);
// var training2 = new PitFight(viking3, viking4);

// training1.train();
//training2.train();

