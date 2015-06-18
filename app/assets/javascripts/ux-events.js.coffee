@registerEvent = (eventName,options) ->
  mixpanel.track(eventName);
  # TODO intercom event
