@RDC ||= {}
class RDC.Pusher
  constructor: (@channel_name, @event_name, @pusher, @callback) ->
    @subscribe()

  subscribe: =>
    @channel = @pusher.subscribe @channel_name
    @bindEvent()

  bindEvent: =>
    @channel.bind @event_name, (data) =>
      @callback(data)

