extends Button

func _pressed():
	get_tree().paused = false
	visible = false
