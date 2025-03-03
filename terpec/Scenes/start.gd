extends Node
@onready var animated_sprite_2d = $AnimatedSprite2D

func _ready():
	preload("res://Scenes/main_menu.tscn")
	animated_sprite_2d.play("start")
	await $AnimatedSprite2D.animation_finished
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
