class RDC.ClientConnectioUtilities

  setCountdown: (data)=>
    time = data.message
    $("#counter").html ''
    $("#counter").countdown
      stepTime: 60
      format: "hh:mm:ss"
      startTime: time
      digitImages: 6
      digitWidth: 53
      digitHeight: 77
      image: "../assets/digits.png"

  newDevice: (@chanel_name, @event_name, @pusher_chanel) =>
    new RDC.Pusher @chanel_name, @event_name, @pusher_chanel

  receiveMessages: (@chanel_name, @event_name, @pusher_chanel, @callback) =>
    newMessage = new RDC.Pusher @chanel_name, @event_name, @pusher_chanel, @router

  router: (data) =>
    @showMessage(data)  if data.action == 'show'
    @setCountdown(data) if data.action == 'clock'

  showMessage: (data)=>
    $('#messages-list').append "<li>#{data.message}</li>"
   