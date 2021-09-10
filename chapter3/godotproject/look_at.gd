extends Spatial


func _ready():
	look_at(Vector3(0,0,0),Vector3(0,0,-1));


func _process(delta):
	look_at(Vector3(0,0,0),Vector3(0,0,-1));
