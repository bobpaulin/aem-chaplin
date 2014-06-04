define [
  'views/base/view'
  'templates/nav/nav'
], (View, template) ->
  'use strict'

  class NavView extends View
    # Automatically render after initialize.
    autoRender: true
    className: 'nav'

    # Save the template string in a prototype property.
    # This is overwritten with the compiled template function.
    # In the end you might want to used precompiled templates.
    template: template
    template = null
