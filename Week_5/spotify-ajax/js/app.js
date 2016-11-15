console.log("APP IS READY");


$(document).ready(function() {

	$(".js-artist-form").on("submit", searchArtist);


});


function searchArtist (e) {
	e.preventDefault();

	var artistInput = $(".js-artist-search").val();

	if (artistInput === "") {
		artistInput = "Oasis";
	}
	
	$.ajax({
		type: "GET",
		url: `https://api.spotify.com/v1/search?type=artist&query=${artistInput}`,
		success: handleSuccess,	
		error: handleError,
	});

	console.log(artistInput);
}


function handleError (error) {
	console.log("Fetch characters error!");
	console.log(error.responseText);
}


function handleSuccess (response) {
	console.log("search Artist success!");
	console.log(response);
}
