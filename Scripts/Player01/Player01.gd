extends KinematicBody2D

var motion = Vector2()
var speed = 300
var facing = 0
var isMovingX = false
var isMovingY = false

func _physics_process(_delta):
	
	# adds x motion to player
	if Input.is_action_pressed("ui_right"):
		motion.x = speed
		isMovingX = true
		$AnimatedSprite.flip_h = false
		if not isMovingY:
			$AnimatedSprite.play("walkRight")
		
	elif Input.is_action_pressed("ui_left"):
		motion.x = -speed
		isMovingX = true
		$AnimatedSprite.flip_h = true
		if not isMovingY:
			$AnimatedSprite.play("walkRight")
		
	else:
		motion.x = 0
		isMovingX = false
		
		
	# adds y motion to player
	if Input.is_action_pressed("ui_down"):
		motion.y = speed
		isMovingY = true
		$AnimatedSprite.play("walkDown")
		
	elif Input.is_action_pressed("ui_up"):
		motion.y = -speed
		isMovingY = true
		$AnimatedSprite.play("walkUp")
		
	else:
		motion.y = 0
		isMovingY = false
	
	if isMovingX == false && isMovingY == false:
		$AnimatedSprite.stop()
		$AnimatedSprite.set_frame(0)
	
	motion = move_and_slide(motion)

	pass
