define [
  'views/base/view'
  'templates/test-component/test-component'
], (View, template) ->
  'use strict'

  class TestComponentView extends View
    # Automatically render after initialize.
    autoRender: true
    className: 'test-component'
    template: template
    template = null