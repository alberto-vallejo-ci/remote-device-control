class RDC.Routers.DashboardRouter extends Backbone.Router
  routes:
    ''          : 'dashboard'
    'settings'  : 'settings'

  dashboard: ->
    $('#container').html 'dashboard'

  settings: ->
    $('#container').html 'settings'

