define [
  'views/base/view'
  'templates/context/second-context'
  'chaplin'
], (View, template, Chaplin) ->
  'use strict'

  class SecondContextView extends View
    # Automatically render after initialize.
    autoRender: true
    className: 'context'

    # Save the template string in a prototype property.
    # This is overwritten with the compiled template function.
    # In the end you might want to used precompiled templates.
    template: template
    template = null
    
    events: {
    'click .moveToThird': 'storeSecond'
    }
    
    storeSecond: ->
      currentComment = @model.get 'comment'
      currentComment.set 'comment', $('.comment').val()
      Chaplin.utils.redirectTo 'context#showThird'