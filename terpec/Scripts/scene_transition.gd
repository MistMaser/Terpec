extends CanvasLayer
@onready var animation_player = $AnimationPlayer

func change_scene(target: String):
	animation_player.play("dissolve")
	await animation_player.animation_finished
	animation_player.play("dissolve_2")
	get_tree().change_scene_to_file("res://Scenes/core.tscn")
	animation_player.play_backwards("dissolve")
	
