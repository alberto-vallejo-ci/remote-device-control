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
  window.pusher = new Pusher '77c523ef7a18fa97e600'
  RDC.init()
