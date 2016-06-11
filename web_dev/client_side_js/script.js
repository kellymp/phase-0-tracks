var sectionHeaders = document.getElementsByTagName("h2");
sectionHeaders[0].style.border = "black solid 2px";
sectionHeaders[1].style.color = "#000099";
sectionHeaders[2].style.fontFamily = "helvetica";
sectionHeaders[2].style.color = "red";

function borderAppear(){
	var pic = document.getElementById("sharks");
	pic.style.border = "15px solid #000099";
}

function borderDissapear(){
	var pic = document.getElementById("sharks");
	pic.style.border = "none"
}

var pic = document.getElementById("sharks");
pic.addEventListener("mouseover", borderAppear);

var pic = document.getElementById("sharks");
pic.addEventListener("mouseout", borderDissapear);


