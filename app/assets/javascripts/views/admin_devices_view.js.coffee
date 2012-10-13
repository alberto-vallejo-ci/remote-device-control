class RDC.Views.AdminDevicesView extends Backbone.View
  initialize: ->
    @collection.on 'add', @addDevice, @

    @newDevice = new RDC.Pusher 'devices',
                                'new_connection',
                                window.pusher,
                                @addNewDevice


  template: JST['templates/admin_devices']

  tagName: 'article'

  attributes:
    id: 'devices'
    style: 'display:none;'

  render: ->
    @$el.html @template()
    @addAllDevices @collection
    @

  addNewDevice: (data) =>
    @collection.add data

  addAllDevices: (devices) ->
    devices.each @addDevice, @

  addDevice: (data) ->
    deviceView = new RDC.Views.DeviceView model: data
    @$('#devices-list').prepend deviceView.render().el
