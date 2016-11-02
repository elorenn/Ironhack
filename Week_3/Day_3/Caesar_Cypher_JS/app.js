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

function caesarCipher (message) {
	var letter_array = message.split("");
	var changed_letters = []


	letter_array.forEach(function (letter) {
		if ((letter >= "A" && letter <= "Z") || (letter >= "a" && letter <= "z")) {
			changed_letters.push(String.fromCharCode((letter.charCodeAt(0)) - 3));
		} else {
			changed_letters.push(letter);
		}	
	});


	return changed_letters.join("");
} 


var encrypted = caesarCipher("Et tu, brute?");

console.log(encrypted);
//=> "Bq qr, _orqb?"







