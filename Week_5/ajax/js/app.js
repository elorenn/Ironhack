console.log("APP JS READY");

$(document).ready(function() {

	$(".js-fetch-characters").on("click", fetchCharacters);
	$(".js-ackbar-form").on("submit", saveAckbar);

	$(".js-character-form").on("submit", saveNewCharacter);

});


function saveNewCharacter (event) {
	event.preventDefault();

	var nameInput = $(".js-character-name").val();
	var weaponInput = $(".js-character-weapon").val();
	var occupationInput = $(".js-character-occupation").val();

	if (weaponInput === "") {
		weaponInput = "default weapon";
	}

	if (nameInput === "") {
		nameInput = "default name";
	}

	if (occupationInput === "") {
		occupationInput = "default occupation";
	}

	var newCharacterInfo = {
		name: nameInput,
		occupation: occupationInput,
		weapon: weaponInput,
	};

	$.ajax({
		type: "POST",
		url: "https://ironhack-characters.herokuapp.com/characters",
		data: newCharacterInfo,
		success: showNewCharacter,
		error: handleError,
	});

}


function saveAckbar (eventThing) {
	// will prevent the default form submission (so page won't refresh):
	eventThing.preventDefault();

	var weaponInput = $(".js-ackbar-weapon").val();

	if (weaponInput === "") {
		weaponInput = "Memes";
	}

	var ackbarInfo = {
		name: "Admiral Ackbar",
		occupation: "Rebel Fleet Admiral",
		weapon: weaponInput,
	};

	$.ajax({
		type: "POST",
		url: "https://ironhack-characters.herokuapp.com/characters",
		data: ackbarInfo,
		success: showAckbar,
		error: handleError,
	});
}

function showAckbar (infoFromApi) {
	console.log("Save Ackbar success");
	console.log(infoFromApi);
}

function showNewCharacter (info) {
	console.log("Save New Character Success");
	console.log(info);
}


function fetchCharacters () {
	// console.log("FETCH");

	$.ajax({
		type: "GET",
		// url of API:
		url: "https://ironhack-characters.herokuapp.com/characters",
		// first callback (for success):
		success: showCharacters,	
		// second callback (for error):
		error: handleError,
	});
}


function showCharacters (response) {
	// always console-log to check wiring:
	console.log("Fetch characters success!");
	console.log(response);

	response.forEach(function (oneCharacter) {
		var characterItem = `
			<li> 
				<h3> ${oneCharacter.name} </h3>
				<p> Weapon: ${oneCharacter.weapon} </p>
				<p> Occupation: ${oneCharacter.occupation} </p>
				<p> Debt: ${oneCharacter.debt} </p>
				<p> Id: ${oneCharacter.id} </p>
			</li>`;

		$(".js-character-list").append(characterItem);
	});
		
}


function handleError (error) {
	console.log("Fetch characters error!");
	console.log(error.responseText);
}

