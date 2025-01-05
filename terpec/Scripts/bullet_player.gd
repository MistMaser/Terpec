extends CharacterBody2D

@onready var animated_sprite_2d = $AnimatedSprite2D

var max_speed = 150

func _ready():
	pass

func _process(delta):
	var movement = movement_vector()
	var direction = movement.normalized()
	velocity = max_speed * direction
	move_and_slide()
	if direction.x != 0 || direction.y != 0:
		animated_sprite_2d.play("walk")
	else:
		animated_sprite_2d.play("idle")
		
	var face_sign = sign(direction.x)
	if face_sign != 0:
		animated_sprite_2d.scale.x = face_sign


func movement_vector():
	var movement_x = Input.get_action_strength("move_r") - Input.get_action_strength("move_l")
	var movement_y = Input.get_action_strength("move_d") - Input.get_action_strength("move_u")
	return Vector2(movement_x, movement_y)
