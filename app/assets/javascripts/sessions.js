// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
window.addEventListener("load", setUpPage);{

function changeID(){
  var change = document.getElementById("showLogin")
  for(var i = 0; i<elements.length; i++){
    change[i].addEventListener("click", showLogin)
    }
  }
}

function showLogin(){
  document.getElementById("signInPage").className = "sign-page-appear";
  document.getElementById("signInButton").className = "sign-page-hidden";

}



