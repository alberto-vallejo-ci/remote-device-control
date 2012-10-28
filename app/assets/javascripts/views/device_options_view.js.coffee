class RDC.Views.DeviceOptionsView extends Backbone.View
  template: JST['templates/device_options']

  className: 'device-options'

  attributes:
    style: 'display: none;'

  events:
    'click .add-time'       : 'addTime'
    'click .send-msg'       : 'sendMessage'
    'click  #send-alert'    : 'showMessageForm'
    'click #lock-device'    : 'lockDevice'

  render: ->
    @$el.html(@template @model.toJSON())
    @$el.attr 'id', @model.id
    @

  addTime: ->
    time = ($ event.target).data 'time'
    klass = ($ event.target).data 'klass'
    message = "00:#{time}:00"
    type = 'clock'
    @makeRequest message, type, klass

  sendMessage: (event) ->
    event.preventDefault()
    message = @$("#message_#{@model.id}").val()
    type = 'show'
    @makeRequest message, type

  lockDevice: (event) ->
    event.preventDefault()
    message = 'Locked'
    type = 'lock'
    @makeRequest message, type

  makeRequest: (message, type, klass = null) ->
    data = {'id': @model.id, 'message': message, 'type': type}
    $.ajax
      type: "POST"
      url: "/message"
      data: data
      success: =>
        @success(type, message, klass)

  showMessageForm: (event) ->
    event.preventDefault()
    @$('.message-form').fadeIn()

  success: (type, message, klass) ->
    if type == 'clock'
      device = ($ "#device_#{@model.id}")
      device.removeClass 'fifteen thirteen sixty'
      device.addClass klass
      ($ "#device_#{@model.id} #timer .zero-time").hide()
      ($ "#device_#{@model.id} #timer .timer-wrapper").fadeIn()
      counter = ($ "#device_#{@model.id} #timer .timer-wrapper .counter").html ''
      counter.countdown
        stepTime: 60
        format: "hh:mm:ss"
        startTime: message
        digitImages: 6
        digitWidth: 53
        digitHeight: 77
        image: "../assets/digits.png"
    else
      $('.message-form').fadeOut()
      @$("#message_#{@model.id}").val('')

