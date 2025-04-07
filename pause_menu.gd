extends Control

var is_pause_menu_active := false

func _ready():
	hide()  # Cache le menu au début
	$AnimationPlayer.play("RESET")

func resume():
	is_pause_menu_active = false
	$AnimationPlayer.play_backwards("blur")
	await $AnimationPlayer.animation_finished  # Attend la fin de l'animation
	get_tree().paused = false
	hide()

func pause():
	if is_pause_menu_active:
		return
	is_pause_menu_active = true
	show()
	get_tree().paused = true
	$AnimationPlayer.play("blur")

func _input(event: InputEvent):
	if event.is_action_pressed("esc"):
		if get_tree().paused:
			resume()
		else:
			pause()

func _on_continuer_pressed():
	resume()

func _on_relancer_pressed():
	get_tree().paused = false
	get_tree().reload_current_scene()

func _on_quitter_pressed():
	get_tree().quit()
