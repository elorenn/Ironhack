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

	ep.forEach(function(episode){
		searchFor("Jon Snow", episode);
	}); 
// http://www.w3schools.com/jsref/jsref_filter.asp
	function highRatings(value) {
		return value.rating >= 8.5;
	}
	var filtered = ep.filter(highRatings);

	function printStuff(anEpisode){
		console.log("")
		console.log(`Title: "` + anEpisode.title + `" Episode #: ${anEpisode.episode_number}`);
		console.log(anEpisode.description); 
		console.log(`Rating:` + anEpisode.rating + " " + "*".repeat(Math.round(anEpisode.rating)) );
		
	}

	console.log("");
	console.log("All the Episodes in Order:");
	console.log("-----------------------------------------");
	console.log("");	
	ep.forEach(printStuff)

	console.log("");
	console.log("Episodes with Ratings of 8.5 or Above:");
	console.log("-----------------------------------------");
	console.log("");	
	filtered.forEach(printStuff);

	
}

console.log("");
fs.readFile("./GoTEpisodes.json", 'utf8', fileActions);

// The indexOf() method returns the position of the first occurrence 
// of a specified value in a string.
// This method returns -1 if the value to search for never occurs.

function searchFor(name, episode) {
	if(episode.description.indexOf(name) > -1) {
		console.log("-----------------------------------------------------------");
        console.log(`* * * Jon Snow is in ${episode.title}!!! * * *`);
        console.log("-----------------------------------------------------------");
	}
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

