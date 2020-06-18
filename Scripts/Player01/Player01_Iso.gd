extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var camera_pos = Vector2(0,0)
var camera_x = 0
var camera_y = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var mouse_pos = get_local_mouse_position()
	print(mouse_pos)
	var mouse_to_player_vector = 0
	var current_x = (mouse_pos.x + 2*$Player01.position.x)/3.0
	var current_y = (mouse_pos.y + 2*$Player01.position.y)/3.0
	
	
	if mouse_pos.distance_to($Player01.position) > PlayerStats.max_view_dis:
		camera_x = current_x
	else :
		camera_x = current_x
	if mouse_pos.distance_to($Player01.position) > PlayerStats.max_view_dis:
		camera_y = current_y
	else :
		camera_y = current_y
	camera_pos = Vector2(camera_x, camera_y)
	$Node2D.position = camera_pos
	$Node2D/Camera2D.align()
#	pass
