@registerEvent = (eventName,options) ->
  try
    mixpanel.track(eventName)
    Intercom('trackEvent',eventName)
  catch err 
    console.error(err)
