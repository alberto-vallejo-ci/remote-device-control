class RDC.Views.DeviceView extends Backbone.View

  tagName: 'li'

  template: JST['templates/device']

  attributes:
    style: 'display:none;'

  events:
    'click .basic-data, #timer'        : 'showTimerOptions'

  render: ->
    model = @model.toJSON()
    @$el.html @template model
    @$el.addClass model.device_class
    @$el.attr 'id', "device_#{@model.id}"
    @fadeDevice()
    @

  fadeDevice: ->
    $('.empty').hide()
    @$el.fadeIn()
    $('.empty').fadeIn()

  showTimerOptions: (event) ->
    @$('.basic-data').hide()
    @$('#timer').fadeIn()
    @showDeviceOptions()

  showDeviceOptions: ->
    deviceOptionsView = new RDC.Views.DeviceOptionsView model: @model
    ($ '#side-bar #header img').attr 'src', '/assets/side_bar/header.png'
    ($ "#side-bar .device-options").remove()

    ($ '#side-bar #header').after deviceOptionsView.render().el
    ($ "#side-bar .device-options").fadeIn()
