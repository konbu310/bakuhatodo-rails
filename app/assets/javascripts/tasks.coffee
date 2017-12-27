# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('.panel').draggable stop: (event, ui) ->
    id = $(this).attr('id')
    dragEvent id
    return
  $('.panel').resizable stop: (event, ui) ->
    id = $(this).attr('id')
    resizeEvent id
    return
  return

getLeft = (id) ->
  l = $('#' + id).css('left')
  l = parseInt(l)

getTop = (id) ->
  t = $('#' + id).css('top')
  t = parseInt(t)

getWidth = (id) ->
  wid = $('#' + id).css('width')
  wid = parseInt(wid)

getHeight = (id) ->
  hei = $('#' + id).css('height')
  hei = parseInt(hei)

pxTovw = (num) ->
  w = $(window).width()
  w = parseInt(w)
  String(Math.round(num*(100/w)))

pxTovh = (num) ->
  h = $(window).height()
  h = parseInt(h)
  String(Math.round(num*(100/h)))


dragEvent = (id) ->
  left = pxTovw(getLeft(id))
  top = pxTovh(getTop(id))
  console.log top, left
  $.post '/position_update',
    id: id
    top: top
    left: left
    (data) ->
      console.log 'ポジション保存'
      return
  return

resizeEvent = (id) ->
  width = pxTovw(getWidth(id))
  height = pxTovh(getHeight(id))
  console.log width, height
  $.post '/size_update',
    id: id
    width: width
    height: height
    (data) ->
      console.log 'サイズ保存'
      return
  return