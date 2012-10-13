class RDC.Views.AdminDevicesView extends Backbone.View
  initialize: ->
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
    @

  addNewDevice: (data) =>
    deviceView = new RDC.Views.DeviceView model: data
    @$('#devices-list').append deviceView.render().el
