class RDC.Routers.DashboardRouter extends Backbone.Router
  routes:
    ''                : 'adminDashboard'
    'admin/:option'   : 'adminDashboard'

  welcomeMessage: ->
    $('#container').remove()
    $('#main-container').append 'Bienvenido!!'

  adminDashboard: (option = 'devices') ->
    adminDashboardView = new RDC.Views.AdminDashboardView active: option
    $('#container').remove()
    $('#main-container').append adminDashboardView.render().el


