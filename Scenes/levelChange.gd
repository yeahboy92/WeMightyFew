extends Area2D


func _physics_process(delta):
	
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player01":
			get_tree().change_scene("rpgTestScene.tscn")
