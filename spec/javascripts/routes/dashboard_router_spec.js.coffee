describe 'Dashboard Router', ->
  describe 'routes', ->
    beforeEach ->
      @router = new RDC.Routers.DashboardRouter()
      Backbone.history.start() unless Backbone.history

    it 'has a route to /', ->
      (expect @router.routes['']).toEqual 'dashboard'

    it 'has a route to settings', ->
      (expect @router.routes['settings']).toEqual 'settings'
