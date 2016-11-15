console.log("CONSOLE LOG");

$(document).ready(function () {

	var phrases = [
		'There is a loneliness in this world so great that you can see it in the slow movement of the hands of a clock.',
		'Perhaps everybody has a garden of Eden.',
		'They slipped briskly into an intimacy from which they never recovered.',
		'For all that we love deeply, becomes a part of us.',
		'Life is either a daring adventure, or nothing at all.',
		'Human life is but a series of footnotes to a vast obscure unfinished masterpiece.'

	]; 



var phrase = phrases[Math.floor(Math.random()*phrases.length)];


	$('.js-phrase').append(phrase);


});
