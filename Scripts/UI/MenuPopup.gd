extends Popup


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
#onready var player = get_node("Player01_Iso")
var already_paused
var selected_menu

# Called when the node enters the scene tree for the first time.

func _ready():
	#player = get_node("Player01_Iso")
	pass


func change_menu_color():
	$Resume.color = Color.gray
	$Restart.color = Color.gray
	$Quit.color = Color.gray
	
	match selected_menu:
		0:
			$Resume.color = Color.greenyellow
		1:
			$Restart.color = Color.greenyellow
		2:
			$Quit.color = Color.greenyellow
			


func _input(_event):
	if not visible:
		if Input.is_action_just_pressed("menu"):
			# Pause game
			already_paused = get_tree().paused
			get_tree().paused = true
			# Reset the popup
			selected_menu = 0
			change_menu_color()
			# Show popup
			#player.set_process_input(false)
			popup()
	else:
		if Input.is_action_just_pressed("ui_down"):
			selected_menu = (selected_menu + 1) % 3;
			change_menu_color()
		elif Input.is_action_just_pressed("ui_up"):
			if selected_menu > 0:
				selected_menu = selected_menu - 1
			else:
				selected_menu = 2
			change_menu_color()
		elif Input.is_action_just_pressed("ui_accept") or Input.is_action_just_pressed("mouse_click"):
			match selected_menu:
				0:
					# Resume game
					if not already_paused:
						get_tree().paused = false
					#player.set_process_input(true)
					hide()
				1:
					# Restart game
					GLOBAL.reload_current_scene()
					get_tree().paused = false
				2:
					# Quit game
					get_tree().quit()
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Resume_mouse_entered():
	selected_menu = 0
	change_menu_color()
	pass # Replace with function body.


func _on_Restart_mouse_entered():
	selected_menu = 1
	change_menu_color()
	pass # Replace with function body.


func _on_Quit_mouse_entered():
	selected_menu = 2
	change_menu_color()
	pass # Replace with function body.
