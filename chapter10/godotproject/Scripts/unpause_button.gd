extends Button

func _pressed():
	get_tree().paused = false
	get_parent().visible = false
