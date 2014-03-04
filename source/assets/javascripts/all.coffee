
# Fittextify article title
$(document).ready ->

# Keyconroll Page navigation
# $(document).ready ->
#     $(document).keydown(e) ->
#         url = false
#         console.log "Hello world"

#         if not e.ctrlKey and not e.altKey and not e.shiftKey and not e.metaKey
#             if e.which is 37 # Left arrow key code
#                 url = $(".page--prev").attr("href")
#             # Right arrow key code
#             else url = $("page--next").attr("href") if e.which is 39
#             window.location = url if url
#         return
#     return


# Twitter button popup
# $(document).ready ->
#     $("#tweet").click ->

#         console.log("hello im loading")

#         # preventDefault()
#         loc = $(this).attr("href")
#         title = escape($(this).attr("title"))
#         window.open "http://twitter.com/share?url=" + loc + "&text=" + "&" + title + "&", "twitterwindow", "height=450 width=550, top=" + ($(window).height()/2 - 225) + ", left=" + ($(window).width()/2 -225) + ", toolbar=0, location=0, menubar=0, directories=0, scrollbars=0"
#         return






# When everything is loaded...
$(window).load ->

    # Lazy load background images
    # $("html").addClass "js-loaded"
