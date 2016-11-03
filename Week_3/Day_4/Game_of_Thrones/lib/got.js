"use strict";

var fs = require('fs');
var read = require("read");

function fileActions(err, file){ 
    if (err) {
        throw err;
    }
   var episodes = JSON.parse(file);

   afterSearch(episodes, 0);
}

fs.readFile("./GoTEpisodes.json", 'utf8', fileActions);


function afterSearch(ep, n) {
	console.log(`Title: ${ep[n].title} Episode #: ${ep[n].episode_number}`);
	console.log(ep[n].description); 
	console.log(`Rating: ${ep[n].rating}`);
}

