// Home page image array //
// const homeimg=[
//     "url(./Image/back_img/img1.jpg)",
//     "url(./Image/back_img/img2.jpg)",
//     "url(./Image/back_img/img3.jpg)",
//     "url(./Image/back_img/img5.jpg)",
//     "url(./Image/back_img/img6.jpg)",
//     "url(./Image/back_img/img7.jpg)",
//     "url(./Image/back_img/img8.jpg)",
//   ];
// var x = 0;
// function displayImage(x) {
//    document.body.style.backgroundImage = homeimg[x];
// }
// function startTimer() {
//   displayImage(x);
//   textAni();
//   setInterval(function() {
//     x = x + 1 >= homeimg.length ? 0 : x + 1;
//     displayImage(x);
//   }, 10000);
// }






const text1=[
  'W',
  'E',
  'L',
  'C',
  'O',
  'M',
  'E',
  '&#128591'
];
var x1 = 0;
var t1="";

function displaytext(p) {
  var tex=document.getElementById("text")
  t1=t1+text1[p];
  tex.innerHTML = t1;
  if(p==7)
  { 
     t1="";
  }
}

function textAni(){
  displaytext(x1);
  setInterval(function() {
    x1 = x1+1 >= text1.length ? 0 : x1 + 1;
    displaytext(x1);
  },1000)
}
//dash board
function btnshift_r()
{
  let p=document.getElementById("dash");
  p.style.color = "black";
  p.style.backgroundColor="white"
  let p1=document.getElementById("approv");
  p1.style.color = "white";
  p1.style.backgroundColor="#485271aa"
  move_dash();
}

function btnshift_l()
{
  let p=document.getElementById("dash");
  p.style.color = "white";
  p.style.backgroundColor="#485271aa"
  let p1=document.getElementById("approv");
  p1.style.color = "black";
  p1.style.backgroundColor="white"
  show_dash()
}
 function move_dash()
 {
  let p=document.getElementById("dash_container");
  p.style.display="none"
 }
 function show_dash()
 {
  let p=document.getElementById("dash_container");
  p.style.display="block"
 }

 function myfunction(){
  let p=document.getElementById("submit")
  p.window.location.assign("terms.html")
 }
 function cross(){
  window.location.assign("index.html");
 }


