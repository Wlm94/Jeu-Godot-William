extends CharacterBody2D


const SPEED = 160.0
const JUMP_VELOCITY = -400.0
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D
var is_alive = true

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	var direction := Input.get_axis("move_left", "move_right")
	
	#Flip the Sprite
	if direction >0:
		animated_sprite.flip_h=false
	elif direction<0:
		animated_sprite.flip_h=true
	
	#Jouer les animations
	if is_on_floor():
		if direction==0:
			animated_sprite.play("idle")
		else:
			animated_sprite.play("run")
	else:
		animated_sprite.play("jump")
	
	#Appliquer mouvement
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	
func die():
	if !is_alive:
		return
	
	is_alive = false
	# Désactive les contrôles et collisions
	set_physics_process(false)
	$CollisionShape2D.set_deferred("disabled", true)
	
	# Animation de mort (optionnelle)
	if has_node("AnimationPlayer"):
		$AnimationPlayer.play("death")
		await $AnimationPlayer.animation_finished
	
	get_tree().reload_current_scene()
	
