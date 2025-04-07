extends Node
@onready var pause_panel: Panel = %PausePanel

func _process(_delta):
	var esc_pressed=Input.is_action_just_pressed("pause")
	if(esc_pressed==true):
		get_tree().paused=true
		pause_panel.show()

func _on_resume_pressed():
	pause_panel.hide()
	get_tree().paused=false

func _on_relancer_pressed():
	get_tree().paused = false
	get_tree().reload_current_scene()

func _on_menu_pressed():
	get_tree().paused=false
	get_tree().change_scene_to_file("res://scenes/Menu.tscn")
