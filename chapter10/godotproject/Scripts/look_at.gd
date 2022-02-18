extends Spatial

export var target = Vector3(0,0,0)
export var up = Vector3(0,0,-1)

func _ready():
	look_at(target,up)
