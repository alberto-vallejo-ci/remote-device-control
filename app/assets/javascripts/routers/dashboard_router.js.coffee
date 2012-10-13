class RDC.Routers.DashboardRouter extends Backbone.Router
  routes:
    ''          : 'dashboard'
    'settings'  : 'settings'

  dashboard: ->
    $('#container').html '<p>Dashboard</p><ul id="device-list"></ul>'

  settings: ->
    $('#container').html 'settings'
