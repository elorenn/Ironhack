"use strict";

var Viking = require("./lib/viking.js");

console.log("");

var viking1 = new Viking("Freyja")
var viking2 = new Viking("Freki")

viking1.stats();
viking2.stats();
viking1.attack(viking2);

console.log("");