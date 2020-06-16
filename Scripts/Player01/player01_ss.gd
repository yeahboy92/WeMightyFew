extends KinematicBody2D

var motion = Vector2()
var speed = 400
var facing = 0
var jumpHeight = 600
var isMovingX = false
var isMovingY = false
var UP = Vector2(0, -1)

var GRAVITY = 30

func _physics_process(_delta):
	
	if not is_on_floor():
		motion.y += GRAVITY
		
	if is_on_floor():
		isMovingY = false
	
	# adds x motion to player
	if Input.is_action_pressed("ui_right"):
		motion.x = speed
		isMovingX = true
		$AnimatedSprite.flip_h = false
		if is_on_floor():
			$AnimatedSprite.play("walkRight")
		
	elif Input.is_action_pressed("ui_left"):
		motion.x = -speed
		isMovingX = true
		$AnimatedSprite.flip_h = true
		if is_on_floor():
			$AnimatedSprite.play("walkRight")
		
	else:
		motion.x = 0
		isMovingX = false
		
		
	# adds y motion to player
	
	if Input.is_action_pressed("ui_jump") && is_on_floor():
		motion.y = -jumpHeight
		isMovingY = true
		$AnimatedSprite.play("jumpRight")
		
	
	if isMovingX == false and isMovingY == false:
		$AnimatedSprite.play("walkRight")
		$AnimatedSprite.stop()
		$AnimatedSprite.set_frame(0)
	
	motion = move_and_slide(motion, UP)

	pass
