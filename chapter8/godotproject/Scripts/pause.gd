extends Spatial

func _input(event):
	if event.is_action_pressed("ui_cancel"):
		print("my_action occurred!")

