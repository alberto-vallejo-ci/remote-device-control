class RDC.Routers.DashboardRouter extends Backbone.Router
  routes:
    ''                : 'welcomeMessage'
    'admin/:option'   : 'adminDashboard'

  welcomeMessage: ->
    $('#container').remove()
    $('#main-container').append 'Bienvenido!!'

  adminDashboard: (option) ->
    adminDashboardView = new RDC.Views.AdminDashboardView active: option
    $('#container').remove()
    $('#main-container').append adminDashboardView.render().el


