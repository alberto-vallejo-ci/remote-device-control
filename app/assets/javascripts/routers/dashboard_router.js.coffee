class RDC.Routers.DashboardRouter extends Backbone.Router
  routes:
    ''          : 'dashboard'
    'settings'  : 'settings'

  dashboard: ->
    dashboardView = new RDC.Views.DashboardView
    $('#container').html dashboardView.render().el

  settings: ->
    $('#container').html 'settings'
