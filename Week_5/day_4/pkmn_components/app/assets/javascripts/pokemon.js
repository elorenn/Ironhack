$(document).on("ready", function () {
	
	$(".js-show-pokemon").on("click", function () {
		var pokemonUri = $(this).data("pokemon-uri");

		var pokemon = new PokemonApp.Pokemon(pokemonUri); 
		pokemon.render();
	});

});

PokemonApp.Pokemon = class {
	constructor (pokemonUri) {
		this.apiUrl = pokemonUri;
	}

	// render is a good name for a method that displays things to the screen
	// in this case, it "renders" the pokemon box:
	render () {
		console.log(`Rendering pokemon with URL: ${this.apiUrl}`);
		$.ajax({
			type: "GET", 
			url: `/${this.apiUrl}`,
			success: PokemonApp.showPokemonModal,
			error: PokemonApp.handleError
		});
	}
};

PokemonApp.showPokemonModal = function (apiResult) {
	console.log("Pokemon API success!");
	console.log(apiResult);

// ===================== Find Types ==============================
	
	var types = apiResult.types
	var allTypes = []

	types.forEach(function(type) {
		
		allTypes.push(type.name);
			
	});

// ===================== Descriptions ============================

	var descArray = apiResult.descriptions
	console.log(descArray);
	var allGens = []; // will end up being sorted
	var allGens2 = []; // will not be sorted 

	for (i = 0; i < descArray.length; i++) {
		string = apiResult.descriptions[i].name;
		// console.log(string); // = beedrill_gen_6

		lastChar = string.charAt(string.length - 1); 
		// console.log(lastChar); // = "6"

		lastCharNum = parseFloat(lastChar);	
		// console.log(lastCharNum); // = 6 

		//allGens.push(lastCharNum);
		allGens.push(lastChar);
		allGens2.push(lastChar);
	}

	//console.log(allGens2);
	var sorted = allGens.sort();
	//console.log(sorted);
	var latestGen = sorted[sorted.length - 1] ;
	console.log(latestGen); // = 6


	//allGens.find(latestGen).findiNDEX()
	var indexOfGen = allGens2.indexOf(latestGen);
	console.log(indexOfGen);


	var indexOfDesc = descArray[indexOfGen];
	console.log(indexOfDesc);
	var descUri = indexOfDesc.resource_uri
	console.log(descUri);


		$.ajax({
			type: "GET", 
			url: descUri,
			success: PokemonApp.showPokemonDescription,
			error: PokemonApp.handleError
		});

// ===================== Add Text ================================

	$(".js-pkmn-name").text(apiResult.name);
	$(".js-pkmn-number").text(`#${apiResult.pkdx_id}`);
	$(".js-pkmn-height").text(apiResult.height);
	$(".js-pkmn-weight").text(apiResult.weight);
	$(".js-pkmn-hp").text(apiResult.hp);
	$(".js-pkmn-attack").text(apiResult.attack);
	$(".js-pkmn-defense").text(apiResult.defense);
	$(".js-pkmn-sp_atk").text(apiResult.sp_atk);
	$(".js-pkmn-sp_def").text(apiResult.sp_def);
	$(".js-pkmn-speed").text(apiResult.speed);
	$(".js-pkmn-type").text(allTypes.join(" & "));



	$(".js-pokemon-modal").modal("show");

// ===================== Console Logs ============================

	console.log(`name: ${apiResult.name}`);
	// console.log(`id: ${apiResult.pkdx_id}`);
	// console.log(`height: ${apiResult.height}`);
	// console.log(`weight: ${apiResult.weight}`);
	// console.log(`hp: ${apiResult.hp}`);
	// console.log(`attack: ${apiResult.attack}`);
	// console.log(`defense: ${apiResult.defense}`);
	// console.log(`special attack: ${apiResult.sp_atk}`);
	// console.log(`special defense: ${apiResult.sp_def}`);
	// console.log(`speed: ${apiResult.speed}`);
	// console.log(`type: ${apiResult.types[0].name}`);
	// //console.log(`type: ${apiResult.types[1].name}`);
	// console.log(`allTypes: ${allTypes}`);
	
	//console.log(apiResult.sprites);

}; // end of showPokemonModal function



PokemonApp.handleError = function (errorThang) {
	console.log("API error");
	console.log(errorThang.responseText);
};


PokemonApp.showPokemonDescription = function (apiResult) {
		
	console.log(apiResult);
	$(".js-pkmn-description").text(apiResult.description)
};




