extends Area2D

@onready var game_manager: Node = get_node("/root/Game/GameManager")

func _on_body_entered(body):
	if body.is_in_group("player"):
		game_manager.level_completed()
		queue_free()
