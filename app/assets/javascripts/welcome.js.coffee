jQuery ($) ->
  new Vue(
    el: '#app',
    data:
      msg: 'Hello Vue.js!'
    created: () ->
      data = @$data
      $.get("/people.json").done (res) ->
        data.people = res
    methods:
      submit: () ->
        @$data.people.unshift @$data.user
        @$data.user = {}
  )
