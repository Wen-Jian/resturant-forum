# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

received: (data) ->
   alert data['message']

$(document).on 'keypress', '[data-behavior~=room_speaker]', (event)->
	
	if event.keyCode is 13 #return
		app.chatroom.
