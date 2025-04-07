extends Node2D

const SPEED=60
var direction=1

@onready var ray_cast_droit: RayCast2D = $RayCastDroit
@onready var ray_cast_gauche: RayCast2D = $RayCastGauche
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_droit.is_colliding():
		direction=-1
		animated_sprite.flip_h=false
	if ray_cast_gauche.is_colliding():
		direction=1
		animated_sprite.flip_h=true
	position.x+=direction*SPEED*delta
