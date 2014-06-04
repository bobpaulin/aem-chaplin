define [
  'views/base/view'
  'templates/site/site'
], (View, template) ->
  'use strict'

  class SiteView extends View
    container: '#main-page'
    id: 'site-container'
    regions:
      main: '#main-container'
      nav: '#nav-container'
    template: template
    template = null
