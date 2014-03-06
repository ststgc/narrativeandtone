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


  # mixitup.js
  $("#sort-target-container").mixitup
    targetSelector: "section"
    filterSelector: ".filter"
    sortSelector: ".sort"
    transitionSpeed: 300
    failClass: 'fail'
    targetDisplayGrid: 'block'
    effects: [
      "fade"
    ]
  return


# Add keyboard shortcut for toggle navigation.
$(document).ready ->
  $(document).keydown (e) ->
    if not e.ctrlKey and not e.altKey and not e.shiftKey and not e.metaKey
      $('body').toggleClass 'js-sidebar--open' if e.which is 13 # Escape key code
      $('body').toggleClass 'js-sidebar--open'
    return

  return


# When everything is loaded...
$(window).load ->
  # Lazy load
  $("html").addClass "js-loaded"
