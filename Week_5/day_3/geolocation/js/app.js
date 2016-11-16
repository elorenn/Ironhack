console.log("APP JS ONLINE");

$(document).ready(function (argument) {
	
	console.log("The page has finished loading.");
	promptForLocation();

});


function promptForLocation () {
	if ("geolocation" in navigator) {
		console.log("Geolocation functions are available.");
		navigator.geolocation.getCurrentPosition(showPositionInDom, showError);
	}
	else {
		var errorHtml = `
		<div class="alert alert-danger" role="alert">
			<strong> Sorry! </strong>
			Your browser is too old to use this site. Please update to GoogleChrome or equivalent.
		</div>`;

		$("body").prepend(errorHtml);
	
		console.log("Geolocation functions are NOT available.");
	}
}


function showPositionInDom () {
	console.log("Got position successfully.");
}

function showError () {
	console.log("Error getting position.");
}




