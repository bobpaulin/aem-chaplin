define [
  'views/base/view'
  'templates/comment-component/comment-component'
  'models/comments'
], (View, template, Comments) ->
  'use strict'

  class CommentComponentView extends View
    # Automatically render after initialize.
    autoRender: true
    className: 'comment-component'
    template: template
    template = null
    initialize: ->
      @model = new Comments()
      theModel = @model
      setInterval(->
        theModel.fetch()
      , 1000)
      
      super
      @subscribeEvent 'commentsLoaded', @render
      