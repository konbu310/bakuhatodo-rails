# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
    $(document).on 'ajax:complete', '.task_delete', (event, ajax, status) ->
      response = $.parseJSON(ajax.responseText)
      setTimeout (->
        $('#' + response.task.id).toggle 'explode'
        return
      ), 1000
      return
    return
  return