define [
  'views/base/view'
  'templates/context/third-context'
  'chaplin'
], (View, template, Chaplin) ->
  'use strict'

  class ThirdContextView extends View
    # Automatically render after initialize.
    autoRender: true
    className: 'context'

    # Save the template string in a prototype property.
    # This is overwritten with the compiled template function.
    # In the end you might want to used precompiled templates.
    template: template
    template = null
    
    events:
      'click .saveComment': 'saveComment'
    
    saveComment: ->
      currentComment = @model.get 'comment'
      currentComment.save()
      Chaplin.utils.redirectTo 'context#showDefault'      