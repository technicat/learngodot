# Making It Move: Scripting the Cube

## Organize Assets

In this chapter, we'll add another script, so it's a good time to start organizing our assets into separate folder.

https://docs.godotengine.org/en/stable/getting_started/workflow/project_setup/project_organization.html#organization

<img src="images/newfolder.png" height="300">
<img src="images/scriptsfolder.png" height="300">

## Script the Cube

https://docs.godotengine.org/en/stable/classes/class_spatial.html?highlight=rotate_y

```
extends Spatial

export var speed = 1.0;

func _ready():
	pass # Replace with function body.

func _process(delta):
	rotate_y(delta*speed);
```

## Scenes within Scenes

### Copy the Scene

Save As to make a copy of the scene. Rename the new scene Cube.tscn.

<img src="images/cubetscn.png" height="300">


In the new Cube scene, make the Cube node the scene root and delete all the other nodes.

<img src="images/makeroot.png" height="300">
<img src="images/deletenode.png" height="300">

<img src="images/makeroot.png" height="300">
<img src="images/deletenode.png" height="300">

<img src="images/cubescene.png" height="300">

### Instance the Scene

<img src="images/playcubes.png">


