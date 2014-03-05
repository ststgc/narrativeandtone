//= require 'jquery.mixitup.min'

# Activate mixitup.js
$(document).ready ->

  # Toggle sidebar
  $('html').on "click", ->
    $('body').removeClass "js-sidebar--open"

  $('.js-sidebar__trigger').click (event) ->
    event.stopPropagation()
    $('body').toggleClass 'js-sidebar--open'
    return



  # $('.share-modal__container').click(function(event){
  #     event.stopPropagation();
  # });

  # $('.js-share-modal__close').on('click', function(){
  #     $('body').removeClass('js-share-modal__active');
  # });





  $("#sort-target-container").mixitup
    targetSelector: "section"
    filterSelector: ".filter"
    sortSelector: ".sort"
    transitionSpeed: 300
    failClass: 'fail'
    targetDisplayGrid: 'block'
    easing: 'windback'
    effects: [
      "fade"
    ]
  return



# When everything is loaded...
$(window).load ->
  # Lazy load
  $("html").addClass "js-loaded"
