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


	var types = apiResult.types
	var allTypes = []

	types.forEach(function(type) {
		
		allTypes.push(type.name);
			
	});



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

	console.log(`name: ${apiResult.name}`);
	console.log(`id: ${apiResult.pkdx_id}`);
	console.log(`height: ${apiResult.height}`);
	console.log(`weight: ${apiResult.weight}`);
	console.log(`hp: ${apiResult.hp}`);
	console.log(`attack: ${apiResult.attack}`);
	console.log(`defense: ${apiResult.defense}`);
	console.log(`special attack: ${apiResult.sp_atk}`);
	console.log(`special defense: ${apiResult.sp_def}`);
	console.log(`speed: ${apiResult.speed}`);
	console.log(`type: ${apiResult.types[0].name}`);
	console.log(`type: ${apiResult.types[1].name}`);
	console.log(`allTypes: ${allTypes}`);
	console.log(`allTypes: ${allTypes.join(" & ")}`);
	



};

PokemonApp.handleError = function (errorThang) {
	console.log("API error");
	console.log(errorThang.responseText);
};






