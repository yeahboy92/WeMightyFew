extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var scene_1 = preload("res://Scenes/MainMenu.tscn")
var current_scene = null

func _ready():
	var root = get_tree().get_root()
	current_scene = root.get_child(root.get_child_count() - 1)
	
func goto_scene(path):
	# This function will usually be called from a signal callback,
	# or some other function in the current scene.
	# Deleting the current scene at this point is
	# a bad idea, because it may still be executing code.
	# This will result in a crash or unexpected behavior.

	# The solution is to defer the load to a later time, when
	# we can be sure that no code from the current scene is running:

	call_deferred("_deferred_goto_scene", path)
	
func reload_current_scene():
	call_deferred("_deferred_reload_scene")

func _deferred_goto_scene(path):
	# It is now safe to remove the current scene
	current_scene.free()

	# Load the new scene.
	var s = ResourceLoader.load(path)

	# Instance the new scene.
	current_scene = s.instance()

	# Add it to the active scene, as child of root.
	get_tree().get_root().add_child(current_scene)

	# Optionally, to make it compatible with the SceneTree.change_scene() API.
	get_tree().set_current_scene(current_scene)
	
func _deferred_reload_scene():
	# It is now safe to remove the current scene
	var s = current_scene.duplicate()
	current_scene.free()
	current_scene = s
	# Optionally, to make it compatible with the SceneTree.change_scene() API.
	get_tree().get_root().add_child(current_scene)

