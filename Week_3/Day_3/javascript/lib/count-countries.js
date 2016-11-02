// **********************************************************	
// ************************ Ruby ****************************
// **********************************************************	

// class CountryCounter
	// def count_countries(country, array) 
	// 	counter = 0

	// 	array.each do |each_country|
	// 		if each_country == country
	// 			counter += 1
	// 		end
	// 	end

	// 	counter 
	// end
// end

// **********************************************************	
// *********************** JavaScript ***********************
// **********************************************************	

function countCountries (country, array) { 
	var counter = 0;

	array.forEach(function (eachCountry) {
		if (eachCountry === country) {
			counter += 1; 
		}
	});

	return counter; 
}

// I want to share the countCountries function:
module.exports = countCountries; 

