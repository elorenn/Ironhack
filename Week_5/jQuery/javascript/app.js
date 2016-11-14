console.log("CONSOLE LOG");


// this document function tell your app to wait for the document to load
// - so all the html is read first, before running the javascript
// otherwise, your js alerts would pop up on a blank page, 
// before the rest of the html is read by the browser:

$(document).ready(function () {


	$('.js-pizza').on('click', function () {
		// do stuff when clicked
		// will add (prepend) in the beginning of the string 
		//to the small tag paragraph
		// each time button is clicked
		$('.js-small').prepend("PIZZA PIZZA! ");
	});

	$('#ice-cream').on('click', function () {
		// do stuff when clicked
		// will add before the string 
		//to the small tag paragraph
		// each time button is clicked
		$('.js-small').before("We all scream for ice-cream!! ");
	});

	$('.js-tacos').on('click', function () {
		// do stuff when clicked
		// will add after the string 
		//to the small tag paragraph
		// each time button is clicked
		$('.js-small').after("un taquito por favor...");
	});

	$('.empanadas').click(function () {
		// pop-up alert:
		//alert("EMPANADA TIME 😛");

		// will add (append) at the end of the string 
		//to the small tag paragraph
		// each time button is clicked
		$('.js-heading').append(`
			<span> EMPANADA TIME </span>
			<a href="#"> SEE MORE EMPANADAS </a>
			`);
	});


	// $('p').remove();
	// 	$('.do-stuff').remove();

	$('.js-falafel').on('click', falafelMessage);

	$('.do-stuff').on('click', doStuffMessage);

	$('#cookies').on("click", cookieMessage);

  $(".js-button-thing").on("click", function () {
    $("body").before(`<img src="images/unicorn3.gif">`);
  });


  $(".js-change-button-color").on("click", function () {
    $(".js-button-thing").addClass("btn");

    if ($(".js-button-thing").hasClass("btn-info")) {
      $(".js-button-thing").addClass("btn-danger");
      $(".js-button-thing").removeClass("btn-info");
    }

    else {
      $(".js-button-thing").addClass("btn-info");
      $(".js-button-thing").removeClass("btn-danger");
    }
  });

});


function falafelMessage () {
		var content = `
		<i> Falafel </i>`;

		$("js-jq-paragraph").html(content);

		//$('.container').empty();
		$('p').remove();
	}


function doStuffMessage () {
		var content = `
		<i> Falafel </i>`;

		$("js-jq-paragraph").html(content);

		$('.container').empty();
		
	}


function cookieMessage () {
	//alert("Have some cookies! 🍪")
	var cookieContent = `
		<div>
			<h2> Have some cookies! </h2>
			<p> Cookies are good for you. Here's why: </p>

			<ul>
				<li> Cookies taste good. </li>
				<li> They have 0 calories. </li>
				<li> Cookies don't lie to you. </li>
			</ul>
		</div> ` ;
	$("body").append(cookieContent);	 
}



