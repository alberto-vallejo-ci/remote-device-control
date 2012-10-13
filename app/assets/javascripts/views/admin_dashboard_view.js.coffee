class RDC.Views.AdminDashboardView extends Backbone.View
  template: JST['templates/admin_dashboard']

  tagName: 'section'

  attributes:
    id: 'container'

  render: ->
    @$el.html @template()

    #devices view
    adminDevicesView = new RDC.Views.AdminDevicesView
      collection: RDC.DevicesCollection

    @$el.append adminDevicesView.render().el

    #settings view
    adminSettingsView = new RDC.Views.AdminSettingsView()

    @$el.append adminSettingsView.render().el

    @activeTab()
    @

  activeTab: ->
    @$(".tabs .#{@options.active}").addClass 'tab-active'
    @$("##{@options.active}").fadeIn()
