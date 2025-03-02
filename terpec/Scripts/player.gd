extends CharacterBody2D

var current_animation = "idle"
var speed = 200
var a = 0
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

func _process(delta):
	current_animation = "idle"
	var mouse = get_local_mouse_position()
	a = snapped(mouse.angle(), PI/4 / (PI/4))
	a = wrapi(int(a), 0, 8)
	if movement_vector() != Vector2(0, 0):
		current_animation = "run"
		animated_sprite_2d.play(current_animation + str(a))
	if movement_vector() == Vector2(0, 0):
		current_animation = "idle"
		animated_sprite_2d.play(current_animation + str(a))
	var movement = movement_vector()
	var direction = movement.normalized()
	velocity = speed * direction
	move_and_slide()
	

func movement_vector():
	var movement_x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	var movement_y = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	return Vector2(movement_x, movement_y)
