extends Control
@onready var audio_stream_player: AudioStreamPlayer = $AudioStreamPlayer

func _ready() -> void:
	audio_stream_player.play()
	$VBoxContainer/StartButton.grab_focus()

func _on_StartButton_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/game.tscn")

func _on_QuitButton_pressed() -> void:
	get_tree().quit()
