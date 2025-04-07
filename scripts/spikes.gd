extends Area2D

@onready var timer = $Timer

func _on_body_entered(body):
	if body.is_in_group("player"):
		print("Mort par pics !")
		body.die()  # Appelle la fonction die() du joueur
		timer.start()

func _on_timer_timeout():
	Engine.time_scale = 1.0  # Réinitialise le temps
