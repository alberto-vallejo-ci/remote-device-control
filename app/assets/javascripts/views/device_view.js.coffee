class RDC.Views.DeviceView extends Backbone.View

  tagName: 'li'

  template: JST['templates/device']

  events:
    'click .add-time'  : 'addTime'
    'click .send-msg'  : 'sendMessage'

  render: ->
    model = @model.toJSON()
    @$el.html @template model
    @$el.addClass model.device_class
    @

  addTime: (event) ->
    event.preventDefault()
    time = ($ event.target).data().time
    message = "00:#{time}:00"
    type = 'clock'
    @makeRequest(message, type)

  sendMessage: (event) ->
    event.preventDefault()
    message = @$el.find("#input_#{@model.id}").val()
    type = 'show'
    @makeRequest(message, type)

  makeRequest: (message, type) ->
    data = {'id': @model.id, 'message': message, 'type': type}
    $.ajax
      type: "POST"
      url: "/message"
      data: data
      success: @success(type, message)

  success: (type, message) ->
    if type == 'clock'
      $("#1.counter").html ''
      $("#1.counter").countdown
        stepTime: 60
        format: "hh:mm:ss"
        startTime: message
        digitImages: 6
        digitWidth: 53
        digitHeight: 77
        image: "../assets/digits.png"
