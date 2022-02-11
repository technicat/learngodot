extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _toggled(button_pressed):
	# Pause or unpause the SceneTree based on whether the button is
	# toggled on or off.
	get_tree().paused = button_pressed
	if button_pressed:
		text = "Unpause"
	else:
		text = "Pause"
