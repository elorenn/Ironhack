function caesarCipher (message) {
	var letter_array = message.split("");
	var changed_letters = []

	letter_array.forEach(function (letter) {
		changed_letters.push(String.fromCharCode((letter.charCodeAt(0)) - 3));	
	});

	return changed_letters.join("");
}


var encrypted = caesarCipher("brutus");

console.log(encrypted);
// "brutus" => "_orqrp"