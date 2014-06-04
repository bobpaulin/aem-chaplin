define ->
  'use strict'

  # The routes for the application. This module returns a function.
  # `match` is match method of the Router
  (match) ->
    match '', 'context#showDefault'
    match 'first', 'context#showFirst'
    match 'second', 'context#showSecond'
    match 'third', 'context#showThird'
