console.log("Testing! The script is running!");

function giveCatBorder(event) {
  console.log("giveCatBorder is running");
  event.target.style.border = "3px solid blue";
}

var catImage = document.getElementById('cat');
catImage.addEventListener("click", giveCatBorder);

var els = document.getElementsByTagName('em');
var el = els[0];
el.addEventListener("mouseover", giveCatBorder);

function makeDJCatAppear() {
var djDiv = document.getElementById("DJ");
if (djDiv.children.length == 1) {
  console.log("makeDJCatAppear is running");
  var DJCat = document.createElement('img');
  DJCat.src = "DJ.gif";
  DJCat.setAttribute("alt", "A DJ cat!");

  // var djDiv = document.getElementById("DJ");
  djDiv.appendChild(DJCat);
  // djDiv.firstChild.removeEventListener("mouseover", makeDJCatAppear); // ONE DJ ONLY
} else {
  console.log("You already have a DJ cat");
  djDiv.removeChild(djDiv.children[1]);
}
}

var djDiv = document.getElementById("DJ");
djDiv.firstChild.addEventListener("mouseover", makeDJCatAppear);
// appendChild(DJCat);