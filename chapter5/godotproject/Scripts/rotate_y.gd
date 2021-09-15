extends Spatial

export var speed = 1.0;

func _process(delta):
	rotate_y(delta*speed);
