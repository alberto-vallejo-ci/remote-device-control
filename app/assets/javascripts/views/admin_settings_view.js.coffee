class RDC.Views.AdminSettingsView extends Backbone.View
  template: JST['templates/admin_settings']

  tagName: 'article'

  attributes:
    id: 'settings'
    style: 'display:none;'

  render: ->
    @$el.html @template()
    @

