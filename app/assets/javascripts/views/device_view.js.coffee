class RDC.Views.DeviceView extends Backbone.View

  tagName: 'li'

  template: JST['templates/device']

  render: ->
    @$el.html @template @model
    @
