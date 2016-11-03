// If no shift is provided, you should use a default shift of -3:
// (do this by setting the parameter "shift" to a default of -3)

"use strict";


function caesarCipher (message, shift= -3) {
	var letter_array = message.split("");
	var changed_letters = []


	letter_array.forEach(function (letter) {
		if ((letter >= "A" && letter <= "Z") || (letter >= "a" && letter <= "z")) {
			changed_letters.push(String.fromCharCode((letter.charCodeAt(0)) + shift));
		} else {
			changed_letters.push(letter);
		}	
	});


	return changed_letters.join("");
} 


module.exports = caesarCipher; 





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
