window.RDC =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  Router: null
  DevicesCollection: null
  init: ->
    @Router = new RDC.Routers.DashboardRouter()
    @DevicesCollection = new RDC.Collections.DevicesCollection()
    Backbone.history.start()

$(document).ready ->
  window.pusher = new Pusher '5b5b48789d293b83abdf'
  RDC.init()
