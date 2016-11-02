// *** Let's compare how we write this in Ruby: *** 
// *** To how we write this in JavaScript: ***
// the first time you assign a variable in JS, you must write "var":
// Ruby => snake case => snake_case, pizza_pie, lasagna,
// JavaScript => camel case => camelCase, pizzaPie, lasagna,
// Classes => class case (not a real term) => ClassCase, PizzaPie, Lasagna,

// ************************************************
// ************************************************
// ************************************************


// require_relative("lib/country-counter.rb")
var countCountriesFn = require("./lib/count-countries.js");
       //  "./" lets node know that this is a local file. 



var countries = [ 
	"Puerto Rico", "Puerto Rico",
	 "USA", "USA", "USA", "USA", "USA",
	 "Nicaragua", 
	 "France", 
	 "Zimbabwe", 
	 "Mongolia", 
	 "Argentina", 
	 "Cuba", "Cuba", "Cuba", "Cuba",
	 "Nigeria", 
	 "Haiti"
	]

// # tests: these should all return true:
// p count_countries("USA", countries) == 5
// p count_countries("Puerto Rico", countries) == 2
// p count_countries("Cuba", countries) == 4
// p count_countries("Nicaragua", countries) == 1
// p count_countries("Japan", countries) == 0
console.log( countCountriesFn("USA", countries) == 5 );
console.log( countCountriesFn("Puerto Rico", countries) == 2 );
console.log( countCountriesFn("Cuba", countries) == 4 );
console.log( countCountriesFn("Nicaragua", countries) == 1 );
console.log( countCountriesFn("Japan", countries) == 0 );
// => true

		// Ruby:
// countries = [ "Puerto Rico", "USA", "Nicaragua", "France", "Zimbabwe", "Mongolia", "Argentina", "Cuba", "Nigeria", "Haiti"]
		// JavaScript:
//var countries = [ "Puerto Rico", "USA", "Nicaragua", "France", "Zimbabwe", "Mongolia", "Argentina", "Cuba", "Nigeria", "Haiti"];


// puts ""
// puts "Countries represented in this room:"
// puts "------------------------------------"
console.log("");
console.log("Countries represented in this room:");
console.log("------------------------------------");


// countries.each do |a_country|
// 	puts "Some of us are from #{a_country}!!"
// end
countries.forEach(function (aCountry) {
	console.log("Some of us are from " + aCountry + "!!");

// a different way to interpolate a string in Javascript is:	
	console.log(`Some of us are from ${aCountry}!!`);

});


// puts ""
console.log("");

// uppercase_countries = countries.map do |a_country|
// 	a_country.upcase
// end
var uppercaseCountries = countries.map(function (aCountry) {
	return aCountry.toUpperCase();
});


// puts "COUNTRIES REPRESENTED IN THIS ROOM (IN UPPERCASE):"
// puts "---------------------------------------------------"
console.log("COUNTRIES REPRESENTED IN THIS ROOM (IN UPPERCASE):");
console.log("---------------------------------------------------");


// uppercase_countries.each do |a_country|
// 	puts "SOME OF US ARE FROM #{a_country}!!"
// end
uppercaseCountries.forEach(function (aCountry) {
	console.log("SOME OF US ARE FROM " + aCountry + "!!");
});


