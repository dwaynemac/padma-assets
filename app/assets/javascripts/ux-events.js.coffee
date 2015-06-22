@registerEvent = (eventName,options) ->
  mixpanel.track(eventName);
  Intercom('trackEvent',eventName);
