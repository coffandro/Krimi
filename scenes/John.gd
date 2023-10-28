extends Node



func _ready():
	$Control/Template.play("default")

func _input(event:InputEvent):
	# check if a dialog is already running
	if Dialogic.current_timeline != null:
		return
	
	if event is InputEventKey and event.keycode == KEY_ENTER and event.pressed:
		Dialogic.start('Chapter1')
		get_viewport().set_input_as_handled()
