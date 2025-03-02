extends MarginContainer

func _ready():
	self.modulate.a = 0
	var tween = create_tween()
	tween.tween_property(self, "modulate", Color(1, 1, 1, 1), 1.5)
