define [
  'controllers/base/controller'
  'models/context'
  'models/comments'
  'views/first-context-view'
  'views/second-context-view'
  'views/third-context-view'
], (Controller, Context, Comments, FirstContextView, SecondContextView, ThirdContextView) ->
  'use strict'

  class ContextController extends Controller
    showFirst: (params) ->
      window.chaplinContext = new Context()
      window.chaplinContext.set 'comment', new Comments()
      @view = new FirstContextView model: window.chaplinContext, region: 'main'
    showSecond: (params) ->
      @view = new SecondContextView model: window.chaplinContext, region: 'main'
    showThird: (params) ->
      @view = new ThirdContextView model: window.chaplinContext, region: 'main'