class RDC.Pusher
  constructor: (@channel_name, @event_name, @pusher) ->
    @subscribe()

  subscribe: =>
    @channel = @pusher.subscribe @channel_name
    @bindEvents()

  bindEvents: =>
    @channel.bind @event_name, (data)=>
      data

  addDevice: (data) ->
    $('#device-list').append("<li id=#{data.id}>#{data.name}</li>") unless $("li##{data.id}").length > 0


