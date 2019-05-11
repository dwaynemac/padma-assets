@registerEvent = (eventName,meta_data) ->
  try
    Intercom('trackEvent',eventName,meta_data)
  catch err
    console.error(err)
