$(document).ready ->
  $("input#menu-lists-filter").quickfilter("div#all-available-lists-menu li:not(.dropdown-header)")
  $("a#refresh-lists-list-menu").click ->
    console.log 'refreshing'
    cache = new Cache(-1, false, new Cache.LocalStorageCacheStorage())
    cache.clear()
    e = $("div#menu-saved-lists")
    e.html '...'
    $.ajax e.data('url'),
      success: (html_response) ->
        e.html html_response
        if e.data('success-callback')
          eval e.data('success-callback')
    
