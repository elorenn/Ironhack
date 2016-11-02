function averageColon (string) {
	var string_array = string.split(":");
	// string_array = [ '80', '70', '90', '100' ]

	var number_array = []

	string_array.forEach(function (eachString) {
		eachNumber = Math.floor(eachString)
		number_array.push(eachNumber);
	});
	// number_array = [ 80, 70, 90, 100 ]

	var total = 0
	for(var i = 0; i < number_array.length; i ++) {
		total += number_array[i];
	}

	console.log(total);
	// total = 340

	var average = total / number_array.length;
	console.log(average);
	// average = 85
	return average
	// you must "return average" in order for test to run "true"
}



var numbers = '80:70:90:100';
console.log( averageColon(numbers) === 85 );
// should return true





