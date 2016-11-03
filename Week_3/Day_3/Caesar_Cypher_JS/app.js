"use strict";

var caesarCipher = require("./lib/caesar_cypher.js");


console.log(caesarCipher("brutus"));
//=> "_orqrp"

console.log(caesarCipher("Et tu, brute?", -4));
//=> "Ap pq, ^nqpa?"

console.log(caesarCipher("Et tu, brute?", -3));
//=> "Bq qr, _orqb?"

// if no shift provided, default to 3: 
console.log(caesarCipher("Et tu, brute?"));
//=> "Bq qr, _orqb?"	

console.log(caesarCipher("Et tu, brute?", 6));
// bad => "Kz z{, hx{zk?"
// fix so that => "Kz za, hxazk?"