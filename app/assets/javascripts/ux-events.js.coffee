@registerEvent = (eventName,meta_data) ->
  try
    mixpanel.track(eventName,meta_data)
    Intercom('trackEvent',eventName,meta_data)
  catch err 
    console.error(err)
