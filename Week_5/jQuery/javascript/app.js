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

	$(".js-change-unicorn").on("click", changeUnicorn);

	//$(".js-button-color").on("click", changeButtonColor);

  $(".js-button-thing").on("click", function () {
    $(".container").before(`<img src="images/unicorn3.gif">`);
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

	$(".js-button-color").on("click", changeButtonColor);


  $('#js-slide').on('click', function(){
	  $('.container').slideToggle(2000);
  });

  $('#js-opacity').on('click', function(){
	  $('.js-poof').fadeToggle(2000);
  });

});



function changeButtonColor () {
	$("button").addClass("btn");

	if ( $("button").hasClass("btn-success") ) {
		$("button").removeClass("btn-success");
		$("button").addClass("btn-info");
	}

	else if ( $("button").hasClass("btn-info") ) {
		$("button").removeClass("btn-info");
		$("button").addClass("btn-warning");
	}

	else if ( $("button").hasClass("btn-warning") ) {
		$("button").removeClass("btn-warning");
	}

	else {
		$("button").addClass("btn-success");
	}

}


var unicornCount = 2;
function changeUnicorn () {
	unicornCount += 1;

	if (unicornCount >7) {
		unicornCount = 1
	}
	$(".js-unicorn-image").attr("src", `images/unicorn${unicornCount}.gif`);
}


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
	$(".container").append(cookieContent);	 
}



