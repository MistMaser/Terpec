extends Node
@onready var animated_sprite_2d = $AnimatedSprite2D
var next_scene = preload("res://Scenes/main_menu.tscn")

func _ready():
	animated_sprite_2d.play("start")
	await $AnimatedSprite2D.animation_finished
	get_tree().change_scene_to_packed(next_scene)
