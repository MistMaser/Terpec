extends CanvasGroup

func _ready():
	self.modulate.a = 0
	var tween = create_tween()
	tween.tween_property(self, "modulate:a", 1, 1.5)
