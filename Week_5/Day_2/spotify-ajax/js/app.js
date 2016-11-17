console.log("APP IS READY");


$(document).ready(function() {

	$(".js-artist-form").on("submit", searchArtist);

});


function searchArtist (e) {
	e.preventDefault();

	var artistInput = $(".js-artist-search").val();

	if (artistInput !== "") {
		
		$.ajax({
			type: "GET",
			url: `https://api.spotify.com/v1/search?type=artist&query=${artistInput}`,
			success: handleSuccess,	
			error: handleError,
		});
	}
	else {
		var errorHtml = `
			<div class="alert alert-warning" role="alert">
				Search left blank. Please type in an artist to search for.
				<button class="js-try-again"> Try Again </button>
			</div>`;

		$("body").prepend(errorHtml);

		$(".js-try-again").on("click", function () {
		location.reload();
	});	
	
		console.log("artist input left blank");
	}

	console.log(artistInput);
}


function handleError (error) {
	console.log("Fetch characters error!");
	console.log(error.responseText);
}


function handleSuccess (response) {
	console.log("search Artist success!");
	console.log(response);

	console.log(response.artists);

	console.log(response.artists.items);

	var responseObject = response.artists.items;

	responseObject.forEach(function (searchResult) {
		var artistInfo = `
			
				<h3> ${searchResult.name} </h3>
			`;

		console.log(searchResult.images);

		var imagesArray = searchResult.images;

		imagesArray.forEach(function (object) {
			imageUrl = `<img src="${object.url}" style="width:25%; height:25%;">`;	
		});
		

		$(".js-artist-info").append(artistInfo);
		$(".js-artist-info").append(imageUrl);

	});

}




