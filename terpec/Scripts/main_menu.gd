extends CanvasLayer


func _on_start_pressed():
	get_tree().change_scene_to_file("res://Scenes/core.tscn")

func _on_quit_pressed():
	get_tree().quit(0)
