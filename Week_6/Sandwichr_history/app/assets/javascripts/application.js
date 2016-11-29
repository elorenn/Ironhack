// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


console.log("CONSOLE LOG");

$(document).ready(function () {
	
	$('.js-add-ingredient').on('click', addIngredient);
	
});

function addIngredient (e) {
	console.log("clicked on button");

	var button = e.target
	var ingredientId = $(this).attr("data-id")
	var sandwichId = $("h1").data("id")
	console.log(button);
	console.log(ingredientId);

	$.ajax({
    type: "POST",
    url:`http://localhost:3000/api/sandwiches/${sandwichId}/ingredients/add`,
    data: {ingredient_id: ingredientId},
    success: getIngredient,  
    error: handleError
  });
}

function handleError (error) {
	console.log("ERROR. Could not find ingredient.");
}

function getIngredient (response) {
	console.log(response);
	console.log(response.name); // => sandwich name
	console.log(response.ingredients);
	var ingredients = response.ingredients;
	var blah = ingredients[ingredients.length - 1];
	var lastIngredient = blah.name
	console.log(lastIngredient); // => ingredient name 
	console.log(response.total_calories); 
	
	$('.js-current-ingredient-list').append(`<li> ${lastIngredient} </li>`);
	$('.js-total-cal').html(response.total_calories);
	
	
}



