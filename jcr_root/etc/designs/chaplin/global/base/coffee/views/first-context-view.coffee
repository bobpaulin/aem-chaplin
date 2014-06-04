define [
  'views/base/view'
  'templates/context/first-context'
  'chaplin'
], (View, template, Chaplin) ->
  'use strict'

  class FirstContextView extends View
    # Automatically render after initialize.
    autoRender: true
    className: 'context'

    # Save the template string in a prototype property.
    # This is overwritten with the compiled template function.
    # In the end you might want to used precompiled templates.
    template: template
    template = null
    
    events: {
    'click .moveToSecond': 'storeFirst'
    }
    
    storeFirst: ->
      currentComment = @model.get 'comment'
      
      currentComment.set 'userName', $('.name').val()
      Chaplin.utils.redirectTo 'context#showSecond'