extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var p_class = null setget set_p_class, get_p_class
var max_view_dis = 500 setget set_max_view_dis, get_max_view_dis


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func set_p_class(x):
	p_class = x
	
func get_p_class():
	return p_class
	
func set_max_view_dis(x):
	max_view_dis = x
	
func get_max_view_dis():
	return max_view_dis
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
