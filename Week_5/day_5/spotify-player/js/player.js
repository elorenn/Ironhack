console.log("CONSOLE LOG");

$(document).ready(function () {


	$('.js-song-search-form').on("submit", searchForSong);
	$('.btn-play').on('click', playSong);
	$('.js-audio').on('timeupdate', printTime);

});


function searchForSong (e) {
	e.preventDefault();
	//console.log("clicked");

// The val() method returns or sets the value attribute of the selected elements:
	userInput = $('.js-song-search').val();
    var theSearch = userInput.split(" ").join("+");

	$.ajax({
    type: "GET",
    url:`https://api.spotify.com/v1/search?type=track&query=${theSearch}`,
    success: showSong, 
    error: handleError
  });
}


function handleError (error) {
	console.log("Error in finding song!");
}

function showSong (theSong) {
	console.log(userInput);
	//console.log(theSong);
	//console.log(theSong.tracks);
	console.log(theSong.tracks.items[0]);

	var songName = theSong.tracks.items[0].name;
    var songArtist = theSong.tracks.items[0].artists[0].name;
    var songAlbUrl = theSong.tracks.items[0].album.images[0].url;
    var songPrevUrl = theSong.tracks.items[0].preview_url;

    $('.js-title').html(songName);
    $('.js-author').html(songArtist);
    $('.js-image').attr("src", songAlbUrl);
    $('.js-audio').attr("src", songPrevUrl);
}

function playSong () {
// =========================================================	
	// if ( $(".btn-play").hasClass("disabled") ) {
	// 	$(".btn-play").removeClass("disabled");
	// 	$(".btn-play").addClass("playing");

	// 	$('.js-audio').trigger('play');

	// 	console.log("play song");

	// }
	// else if ( $(".btn-play").hasClass("playing") ) {
	// 	$(".btn-play").removeClass("playing");
	// 	$(".btn-play").addClass("disabled");

	// 	$('.js-audio').trigger('pause');

	// 	console.log("pause song");
	// }
// =========================================================
	$(".btn-play").toggleClass("disabled");
	$('.btn-play').toggleClass('playing');

	if ( $(".btn-play").hasClass("playing") ) {
		$('.js-audio').trigger('play');
		console.log("play song");
	}	
	else {
		$('.js-audio').trigger('pause');
		console.log("pause song");
	}

}

// Define a function to print the player's current time
function printTime () {

  var current = $('.js-audio').prop('currentTime');
  console.debug('Current time: ' + current);

  $('progress').attr("value", current); 

}






