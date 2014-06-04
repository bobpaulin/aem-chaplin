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
      @model.fetch()
      super
      @subscribeEvent 'commentsLoaded', @render
      