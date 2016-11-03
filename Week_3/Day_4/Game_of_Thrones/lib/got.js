"use strict";

var fs = require('fs');
var read = require("read");

function fileActions(err, file){ 
    if (err) {
        throw err;
    }
   var episodes = JSON.parse(file);

   afterSearch(episodes);
}

fs.readFile("./GoTEpisodes.json", 'utf8', fileActions);


// function afterSearch(ep, n) {
// 	console.log(`Title: ${ep[n].title} Episode #: ${ep[n].episode_number}`);
// 	console.log(ep[n].description); 
// 	//console.log(`Rating:` + ep[n].rating + " " + "*".repeat(ep[n].rating) );
// 	console.log(`Rating:` + ep[n].rating + " " + "*".repeat(Math.round(ep[n].rating)) );
// }

function afterSearch(ep) {
	ep.forEach(function(anEpisode) {
		console.log("")
		console.log(`Title: ${anEpisode.title} Episode #: ${anEpisode.episode_number}`);
		console.log(anEpisode.description); 
		console.log(`Rating:` + anEpisode.rating + " " + "*".repeat(Math.round(anEpisode.rating)) );
	});	
}