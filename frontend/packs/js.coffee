import Vue from 'vue/dist/vue.esm'
import Cover from '../js/cover.vue'
import semantic_js from '../semantic_ui/dist/semantic.min'

$ ->
  cover = new Vue
    el: document.getElementById('cover'),
    render: (h) ->
      h(Cover)

  # Dropdowns
  $('.ui.dropdown').dropdown()

  # Tabs
  $('.tabular .item').tab
    onVisible: ->
      console.log 'tab visible'

  # Shapes
  $('.shape').shape
    duration: 350

  # Shapes Click
  $('.shape .card').on 'click', (e) ->
    $(@).parents('.shape').shape('flip left')

  # Menu
  $('.hamburger').on 'click', (e) ->
    e.preventDefault()
    $('.ui.sidebar').sidebar('toggle')
