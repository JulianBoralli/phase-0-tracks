

$(document).ready(function() {

for (var i=0; i < 26; i++) {
	var letter = "<p>" + String.fromCharCode(65+i) + "<p>";
	$( "#canvas" ).append( letter );
	var r = Math.random() * 255;
	r = Math.ceil(r);
	var g = Math.random() * 255;
	g = Math.ceil(g);
	var b = Math.random() * 255;
	b = Math.ceil(b);
	var rgb = "\"rgb(" + r + "," + g + "," + b + ")\"";

	console.log(rgb);
	$( "#canvas p" ).last().prev().css( "color", rgb);
}



$( "p" ).draggable({
    containment: '#canvas',
  } );

}); 