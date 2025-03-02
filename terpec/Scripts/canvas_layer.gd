extends CanvasLayer

func fade_in():
	var tween = create_tween()
	$ColorRect.visible = true
	tween.tween_property($ColorRect, "modulate: a", 0.0, 1.0)
	await tween.finished
	$ColorRect.visible = false
	
func fade_out():
	var tween = create_tween()
	$ColorRect.visible = true
	tween.tween_property($ColorRect, "modulate: a", 1.0, 1.0)
	await tween.finished
	$ColorRect.visible = false
