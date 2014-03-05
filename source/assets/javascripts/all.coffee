//= require 'jquery.mixitup.min'

# Activate mixitup.js
$(document).ready ->
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
