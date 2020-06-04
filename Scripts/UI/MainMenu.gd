extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var continue_Label = $HBoxContainer/VBoxContainer/MenuOptions/Continue
onready var new_Game_Label = $HBoxContainer/VBoxContainer/MenuOptions/NewGame
onready var options_Label = $HBoxContainer/VBoxContainer/MenuOptions/Options


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass




func _on_Continue_mouse_entered():
	continue_Label.set("custom_colors/font_color", Color( 1, 1, 0, 1 ))
	pass


func _on_Continue_mouse_exited():
	continue_Label.set("custom_colors/font_color", Color( 1, 1, 1, 1 ))
	pass
