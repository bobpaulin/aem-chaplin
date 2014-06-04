define [
  'controllers/base/controller'
  'views/nav-view'
], (Controller, NavView) ->
  'use strict'

  class NavController extends Controller
    show: (params) ->
      @view = new NavView region: 'main'
