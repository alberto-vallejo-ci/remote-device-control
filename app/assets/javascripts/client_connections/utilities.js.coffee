class RDC.ClientConnectioUtilities

  newDevice: (@chanel_name, @event_name, @pusher_chanel) =>
    new RDC.Pusher @chanel_name, @event_name, @pusher_chanel

  receiveMessages: (@chanel_name, @event_name, @pusher_chanel, @callback) =>
    newMessage = new RDC.Pusher @chanel_name, @event_name, @pusher_chanel, @router

  router: (data) =>
    @showMessage(data)  if data.action == 'show'
    @setCountdown(data) if data.action == 'clock'
    @lockDevice(data)   if data.action is 'lock'

  showMessage: (data)=>
    $(".wrapper-container##{data.id} #messages-list").append "<li>#{data.message}</li>"

  setCountdown: (data)=>
    time = data.message
    $(".wrapper-container##{data.id} #counter").html ''
    $(".wrapper-container##{data.id} #counter").countdown
      stepTime: 60
      format: "hh:mm:ss"
      startTime: time
      digitImages: 6
      digitWidth: 53
      digitHeight: 77
      image: "../assets/digits.png"

  lockDevice: (data) ->
    $('.wrapper-container##{data.id} #messages-list').append "<li>#{data.message}</li>"
   