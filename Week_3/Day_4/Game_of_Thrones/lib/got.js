"use strict";

var fs = require('fs');
var read = require("read");

function fileActions(err, file){ 
    if (err) {
        throw err;
    }
   var episodes = JSON.parse(file);

   sortEpisodes(episodes);
  
}

fs.readFile("./GoTEpisodes.json", 'utf8', fileActions);


function sortEpisodes(ep) {
	 ep.sort(function(a, b){
		return a.episode_number - b.episode_number
	});

	function highRatings(value) {
		return value.rating >= 8.5;
	}
	var filtered = ep.filter(highRatings);

	function printStuff(anEpisode){
		console.log("")
		console.log(`Title: ${anEpisode.title} Episode #: ${anEpisode.episode_number}`);
		console.log(anEpisode.description); 
		console.log(`Rating:` + anEpisode.rating + " " + "*".repeat(Math.round(anEpisode.rating)) );
		
	}

	filtered.forEach(printStuff)
}




// function highestRatings(ep) {
// 	var highRatingEp = []
// 	ep.forEach(x) {
// 		if (x.rating >= 8.5) {
// 			highRatingEp.push(x);	
// 		}};
// 	console.log("");
// 	console.log("Episodes with Ratings of 8.5 or Above:");
// 	console.log("-----------------------------------------");
// 	console.log("");	
// 	highRatingEp.forEach(printStuff);
// }



// --------------------------------------------------------------
// ------- Using a for loop instead of forEach ------------------
// --------------------------------------------------------------

// function afterSearch(ep) {
//     for (i = 0; i < ep.length; i++) {
//     console.log(`Title: ${ep[i].title}  Episode ${ep[i].episode_number}`);
//     console.log(ep[i].description);
//     console.log('Rating: ' + ep[i].rating + " " + '*'.repeat(Math.round(ep[i].rating)));
// }}

// --------------------------------------------------------------
// --------------------------------------------------------------
// --------------------------------------------------------------


// function afterSearch(ep, n) {
// 	console.log(`Title: ${ep[n].title} Episode #: ${ep[n].episode_number}`);
// 	console.log(ep[n].description); 
// 	//console.log(`Rating:` + ep[n].rating + " " + "*".repeat(ep[n].rating) );
// 	console.log(`Rating:` + ep[n].rating + " " + "*".repeat(Math.round(ep[n].rating)) );
// }

