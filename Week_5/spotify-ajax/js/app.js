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

	console.log(response.artists);

	console.log(response.artists.items);

	var responseObject = response.artists.items;

	responseObject.forEach(function (searchResult) {
		var artistInfo = `
			<li> 
				<h3> ${searchResult.name} </h3>
			</li>`;

		console.log(searchResult.images);


		var imagesArray = searchResult.images;

		imagesArray.forEach(function (object) {
			imageUrl = `<img src="${object.url}" style="width:25%; height:25%;">`; 

			console.log(object.url);
			console.log(imageUrl);
		});



		

		$(".js-artist-info").append(artistInfo);
		$(".js-artist-info").append(imageUrl);

	});

}




