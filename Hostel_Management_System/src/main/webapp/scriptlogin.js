var modal = document.getElementById("formboxLogin");
var  back= document.getElementById("loginContainer");
// Get the button that opens the modal
var btn = document.getElementById("myBtn");
// var  nav= document.getElementById("navbar1");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on the button, open the modal
btn.onclick = function() {
  modal.style.display = "block";
  back.style.display = "none";
  // nav.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
  back.style.display = "block";
  // nav.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}

const homeimg=[
    "Image/back_img/img1.jpg",
    "Image/back_img/img2.jpg",
    "Image/back_img/img3.jpg",
    "Image/back_img/img4.jpg",
    "Image/back_img/img5.jpg",
    "Image/back_img/img6.jpg"
  
  ];
  var x = 0;
  function displayImage(x) {
    document.getElementById("imagearry").innerHTML='<img src="'+homeimg[x]+'"/>';
  }
  function startTimer() {
  displayImage(x);
  modal.style.display = "none";
  setInterval(function() {
    x = x + 1 >= homeimg.length ? 0 : x + 1;
    displayImage(x);
  },3000);
  }