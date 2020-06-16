extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var accountant = load("res://Scenes/Characters/Player/Accountant_Iso.tscn")
onready var default_Player = load("res://Scenes/Characters/Player/Player01_Iso.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	if PlayerStats.get_p_class() == 0:
		var a = accountant.instance()
		$Player.add_child(a)
	else:
		var p = default_Player.instance()
		$Player.add_child(p)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
