// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
window.addEventListener("load", setUpPage);{
  var change = document.getElementById("showLogin")
    change.addEventListener("click", showLogin());
  }

function showLogin(){
  document.getElementById("showLogin").className = "sign-page-hidden";
  document.getElementById("signInPage").className = "sign-page-appear";
}



