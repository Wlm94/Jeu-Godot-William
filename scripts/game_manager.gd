extends Node

@onready var victory_panel: ColorRect = $VictoryScreen/VictoryPanel
@onready var victory_label: Label = $VictoryScreen/VictoryPanel/Label
@onready var success_sound: AudioStreamPlayer = $SuccessSound

func _ready():
	victory_panel.visible = false
	victory_label.visible = false

func level_completed():
	get_tree().paused = true
	success_sound.play()
	victory_panel.visible = true
	victory_label.visible = true
	await get_tree().create_timer(5.22).timeout
	get_tree().paused = false
	get_tree().change_scene_to_file("res://scenes/Menu.tscn")
