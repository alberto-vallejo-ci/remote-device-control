window.RDC =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  Router: null
  init: ->
    @Router = new RDC.Routers.DashboardRouter()
    Backbone.history.start()

$(document).ready ->
  RDC.init()
  window.pusher = new Pusher '5b5b48789d293b83abdf'
