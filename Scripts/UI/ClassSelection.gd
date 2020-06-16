extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TextureButton_pressed():
	GLOBAL.goto_scene("res://Scenes/levels/TestLevelOne.tscn")
	pass # Replace with function body.


func _on_AccountantButton_pressed():
	PlayerStats.set_p_class(0)
	GLOBAL.goto_scene("res://Scenes/levels/TestLevelOne.tscn")
	pass # Replace with function body.

func _on_ITButton_pressed():
	PlayerStats.set_p_class(1)
	GLOBAL.goto_scene("res://Scenes/levels/TestLevelOne.tscn")
	pass # Replace with function body.


func _on_HRButton_pressed():
	PlayerStats.set_p_class(2)
	GLOBAL.goto_scene("res://Scenes/levels/TestLevelOne.tscn")
	pass # Replace with function body.

func _on_MaintenanceButton_pressed():
	PlayerStats.set_p_class(3)
	GLOBAL.goto_scene("res://Scenes/levels/TestLevelOne.tscn")
	pass # Replace with function body.

