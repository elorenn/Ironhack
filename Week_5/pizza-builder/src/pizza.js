// Write your Pizza Builder JavaScript in this file.

var ingredientCount = 21

$(document).ready(function () {

	
	$('.btn-pepperonni').on('click', function(){
  		$('#js-pep').toggle();

  		($('.btn-pepperonni').toggleClass('active'))

  		if ($('.btn-pepperonni').hasClass('active')) {

  			ingredientCount += 1; 

  			$('strong').text(`$${ingredientCount}`)
  		}	
  		else {
  			ingredientCount -= 1; 

  			$('strong').text(`$${ingredientCount}`);
  		}	


  		// if ($('.btn-pepperonni').hasClass('active')) {
  		// 	$('.btn-pepperonni').removeClass('active');
  		// }
  		// else {
  		// 	$('.btn-pepperonni').addClass('active');
  		// }

	});



	$('.btn-mushrooms').on('click', function(){
  		$('#js-mushrooms').toggle();
		$('.btn-mushrooms').toggleClass('active');

		if ($('.btn-mushrooms').hasClass('active')) {

  			ingredientCount += 1; 

  			$('strong').text(`$${ingredientCount}`)
  		}	
  		else {
  			ingredientCount -= 1; 

  			$('strong').text(`$${ingredientCount}`);
  		}	

	});

	$('.btn-green-peppers').on('click', function(){
  		$('#js-green-peppers').toggle();
  		$('.btn-green-peppers').toggleClass('active');

  		if ($('.btn-green-peppers').hasClass('active')) {

  			ingredientCount += 1; 

  			$('strong').text(`$${ingredientCount}`)
  		}	
  		else {
  			ingredientCount -= 1; 

  			$('strong').text(`$${ingredientCount}`);
  		}
	});


	$(".btn-sauce").on("click", changeSauce);

	$(".btn-crust").on("click", changeCrust);

});




function changeSauce () {

	$('.btn-sauce').toggleClass('active');

	if ( $(".sauce").hasClass("sauce-white") ) {
		$(".sauce").removeClass("sauce-white");
	}

	else {
		$(".sauce").addClass("sauce-white");
	}

	if ($('.btn-sauce').hasClass('active')) {

  			ingredientCount += 3; 

  			$('strong').text(`$${ingredientCount}`)
  		}	
  		else {
  			ingredientCount -= 3; 

  			$('strong').text(`$${ingredientCount}`);
  		}
}



function changeCrust () {

	$('.btn-crust').toggleClass('active');

	if ( $(".crust").hasClass("crust-gluten-free") ) {
		$(".crust").removeClass("crust-gluten-free");
	}

	else {
		$(".crust").addClass("crust-gluten-free");
	}

		if ($('.btn-crust').hasClass('active')) {

  			ingredientCount += 5; 

  			$('strong').text(`$${ingredientCount}`)
  		}	
  		else {
  			ingredientCount -= 5; 

  			$('strong').text(`$${ingredientCount}`);
  		}
}
