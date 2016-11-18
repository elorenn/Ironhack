var $color_button = $('.color-changer');

function changeColor(event){
// .target method tells us the object that dispatched the event
// The .data() method allows us to attach data of any type to DOM elements
// we can grab our color from the data attribute of the button:
  var color = $(event.target).data('color');

// change the background color of our page with jQuery:
  $("body").css("background-color", color);

// when the color changes, load it into localStorage:
  window.localStorage.setItem("bg-color", color);

  console.log(color);
} // => end of changeColor






// now we access the localStorage, 
// so that the page will stay that color after you refresh:
function loadDefaultColor(){
// check to see if our localStorage object has a key of bg-color:	
	if (window.localStorage.getItem("bg-color")){
// then,load it into a variable, and change the background's CSS:		
		var savedColor = window.localStorage.getItem("bg-color");
    	$("body").css("background-color", savedColor);
  }
} // => end of loadDefaultColor


// call the function:
loadDefaultColor();

$color_button.on("click", changeColor);

