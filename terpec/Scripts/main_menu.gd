extends CanvasLayer
@onready var animated_sprite_2d = $AnimatedSprite2D


func _ready():
	preload("res://Scenes/core.tscn")
	animated_sprite_2d.play("default")

func _on_start_pressed():
	SceneTransition.change_scene("res://Scenes/core.tscn")

func _on_quit_pressed():
	get_tree().quit(0)
