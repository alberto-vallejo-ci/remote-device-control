class RDC.Routers.DashboardRouter extends Backbone.Router
  routes:
    ''                : 'welcomeMessage'
    'admin/:option'   : 'adminDashboard'

  welcomeMessage: ->
    $('#main').html 'Bienvenido!!'

  adminDashboard: (option) ->
    adminDashboardView = new RDC.Views.AdminDashboardView active: option
    $('#main').html adminDashboardView.render().el


