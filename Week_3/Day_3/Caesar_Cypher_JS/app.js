"use strict";

var caesarCipher = require("./lib/caesar_cypher.js");

// Left shift of 4
var encrypted = caesarCipher("Et tu, brute?", -4);

console.log(encrypted);
//=> "Ap pq, ^nqpa?"

encrypted = caesarCipher("Et tu, brute?", -3);

console.log(encrypted);
//=> "Bq qr, _orqb?"

// No shift provided. Default to -3.
encrypted = caesarCipher("Et tu, brute?");

console.log(encrypted);
//=> "Bq qr, _orqb?"	

encrypted = caesarCipher("Et tu, brute?", 6);

console.log(encrypted);
// bad => "Kz z{, hx{zk?"
// fix so that => "Kz za, hxazk?"


// --------------------------------------------------------------
//-------------------- Iteration 1 -------------------------------
// --------------------------------------------------------------

// function caesarCipher (message) {
// 	var letter_array = message.split("");
// 	var changed_letters = []

// 	letter_array.forEach(function (letter) {
// 		changed_letters.push(String.fromCharCode((letter.charCodeAt(0)) - 3));	
// 	});

// 	return changed_letters.join("");
// }


// var encrypted = caesarCipher("brutus");

// console.log(encrypted);
// "brutus" => "_orqrp"


// --------------------------------------------------------------

			// try it with .map: 


// --------------------------------------------------------------
//-------------------- Iteration 2 ------------------------------
// --------------------------------------------------------------

// function caesarCipher (message) {
// 	var letter_array = message.split("");
// 	var changed_letters = []


// 	letter_array.forEach(function (letter) {
// 		if ((letter >= "A" && letter <= "Z") || (letter >= "a" && letter <= "z")) {
// 			changed_letters.push(String.fromCharCode((letter.charCodeAt(0)) - 3));
// 		} else {
// 			changed_letters.push(letter);
// 		}	
// 	});


// 	return changed_letters.join("");
// } 


// var encrypted = caesarCipher("Et tu, brute?");

// console.log(encrypted);
// //=> "Bq qr, _orqb?"


// --------------------------------------------------------------
//-------------------- Iteration 3 ------------------------------
// --------------------------------------------------------------

// If no shift is provided, you should use a default shift of -3:
// (do this by setting the parameter "shift" to a default of -3)

// function caesarCipher (message, shift= -3) {
// 	var letter_array = message.split("");
// 	var changed_letters = []


// 	letter_array.forEach(function (letter) {
// 		if ((letter >= "A" && letter <= "Z") || (letter >= "a" && letter <= "z")) {
// 			changed_letters.push(String.fromCharCode((letter.charCodeAt(0)) + shift));
// 		} else {
// 			changed_letters.push(letter);
// 		}	
// 	});


// 	return changed_letters.join("");
// } 






// --------------------------------------------------------------
//-------------------- Iteration 4 ------------------------------
// --------------------------------------------------------------




