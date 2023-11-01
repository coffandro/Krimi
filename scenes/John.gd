extends Node

@onready var balloon: CanvasLayer = $Balloon

func _ready():
#	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
	$Control/Template.play("default")

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("dialogic_default_action"):
		balloon.start(load("res://characters/John.dialogue"), "this_is_a_node_title")
		#DialogueManager.show_example_dialogue_balloon(load("res://characters/John.dialogue"), "this_is_a_node_title")
		get_viewport().set_input_as_handled()	
	
