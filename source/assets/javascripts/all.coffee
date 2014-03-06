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
    clearFilter = document.getElementById("clear")
    if not e.ctrlKey and not e.altKey and not e.shiftKey and not e.metaKey
      if e.which is 27 # Escape key code
        clearFilter.click()
      else $('body').toggleClass 'js-sidebar--open' if e.which is 77 # 'm' key code
    return
  return


# When everything is loaded...
$(window).load ->
  # Lazy load
  $("html").addClass "js-loaded"
