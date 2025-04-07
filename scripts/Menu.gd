extends Control

func _ready() -> void:
	$VBoxContainer/StartButton.grab_focus()

func _on_StartButton_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/game.tscn")

func _on_QuitButton_pressed() -> void:
	get_tree().quit()
