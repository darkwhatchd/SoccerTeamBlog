$(document).on('turbolinks:load', function () { 
  $(".navbar-burger").on("click", function() {
    console.log('clicado')
    $(".navbar-burger").toggleClass("is-active");
    $(".navbar-menu").toggleClass("is-active");
  })
})