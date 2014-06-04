define [
  'chaplin',
  'models/base/model'
  'backbone'
], (Chaplin, Model, Backbone) ->
  'use strict'

  class Comments extends Model
    defaults:
      'jcr:primaryType': 'nt:unstructured'
    url: ->
      '/etc/test/data/comments'
    fetch: (opts) ->
      comment = @ 
      $.get('/bin/querybuilder.json?p.hits=full&type=nt:unstructured&nodename=comment*&path=/etc/test', null, (data) ->
        comment.set(comment.parse(data, opts), opts)
        Chaplin.mediator.publish 'commentsLoaded'
      )
    save: ->
      $.post('/etc/test/data/comments/comment' + Math.floor(Math.random() * (1000)), @attributes)
      