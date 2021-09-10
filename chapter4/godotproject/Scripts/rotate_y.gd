extends Spatial

export var speed = 1.0;

func _ready():
	pass # Replace with function body.

func _process(delta):
	rotate_y(delta*speed);
