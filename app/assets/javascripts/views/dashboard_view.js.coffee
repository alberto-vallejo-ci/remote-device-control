class RDC.Views.DashboardView extends Backbone.View
  initialize: ->
    @newDevice = new RDC.Pusher 'devices',
                                'new_connection',
                                window.pusher,
                                @addNewDevice

  template: JST['templates/dashboard']

  render: ->
    @$el.html @template()
    @

  addNewDevice: (data) =>
    deviceView = new RDC.Views.DeviceView model: data
    @$('#devices').append deviceView.render().el

