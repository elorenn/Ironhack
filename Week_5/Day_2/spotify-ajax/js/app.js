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

	//console.log(artistInput);

} // => end of searchArtist


function handleError (error) {
	console.log("Fetch characters error!");
	console.log(error.responseText);
}


function handleSuccess (response) {
	console.log("search Artist success!");	
	// console.log(response);
	// console.log(response.artists);
	// console.log(response.artists.items);

	var responseObject = response.artists.items;

	responseObject.forEach(function (searchResult) {
		var artistInfo = `
				
				<div class="js-each-thing">
				<label for="js-the-artist-search"> ${searchResult.name} </label>
				</div>
			`;

		//console.log(searchResult.images);

		var imagesArray = searchResult.images;

// ========================== Show Images =============================		
	var urlArray = [];

	imagesArray.forEach(function (object) {
		//imageUrl = `<img src="${object.url}" style="width:25%; height:25%;">`;
		

		imageUrl = `<input type="image" id= "js-the-artist-search" style="width:25%; height:25%;" src="${object.url}">`

		urlArray.push(imageUrl);
	

		//console.log(object.url);
		//console.log(imageUrl);
	});

	//console.log(urlArray);

	$(".js-artist-info").append(artistInfo);
	$(".js-artist-info").append(urlArray[0]); // bcs before it was showing a pixelated image
	

	// console.log(artistInfo);
	// console.log(urlArray[0]);

	$(".js-artist-info").on("click", searchAlbum);

	}); // => end of responseObject.forEach

} // => end of handleSuccess


function searchAlbum(event) {
	event.preventDefault();
	console.log("clicked on picture to get albums");
};

