extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var accountant = load("res://Scenes/Characters/classes/Accountant/Accountant_ss.tscn")
onready var ITManager = load("res://Scenes/Characters/classes/ITManager/ITManager_ss.tscn")
onready var HRManager = load("res://Scenes/Characters/classes/HRManager/HRManager_ss.tscn")
onready var Maintanence = load("res://Scenes/Characters/classes/Maintanence/Maintanence_ss.tscn")
onready var default_Player = load("res://Scenes/Characters/Player/Player01_ss.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	if not $Player.get_child_count() == 0:
		for i in range(0, $Player.get_child_count()):
			$Player.get_child(i).queue_free()
	match PlayerStats.get_p_class():
		0:
			var p = accountant.instance()
			$Player.add_child(p)
		1:
			var p = ITManager.instance()
			$Player.add_child(p)
		2:
			var p = HRManager.instance()
			$Player.add_child(p)
		3:
			var p = Maintanence.instance()
			$Player.add_child(p)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
