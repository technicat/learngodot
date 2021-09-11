# Making a Scene

## Create a New Project

https://docs.godotengine.org/en/stable/tutorials/3d/introduction_to_3d.html

https://docs.godotengine.org/en/stable/getting_started/step_by_step/scenes_and_nodes.html

## Create a Scene

In just about all game engines, or at least 3D game engines, a game is composed of one or more levels or scenes (CryEngine and Unreal use the term level, Unity and Godo use scene). The term level is probably more recognizable to game players, but I think scene is a good analogy with movies. Maybe set is an even better analogy, as a scene is the arrangement of game assets (sometimes called props, to take the movie analogy further).

### Anatomy of a Scene

A scene is typically implemented as a hierarchy, or tree, of nodes. Godot scenes are used in the same way (there is always one current scene in a game, and there as to be a designated start scene), but Godo scenes are more general - any 3D tree structure or branch of that structure can be saved out as a scene, and conversely, a scene can include other scenes as branches. In other words, scenes are reusable branches.

https://docs.godotengine.org/en/stable/tutorials/3d/introduction_to_3d.html#spatial-node

<img src="images/createspatial.png" height="300">

https://docs.godotengine.org/en/stable/tutorials/3d/using_transforms.html

## Add a Camera

If you hit Play now, you won't see anything because our scene doesn't have a Camera. In a 3D scene, the camera represents the view point, so it could also be considered the simulated eye (or eyes, if we're doing stereo as in virtual reality), but you can also think of it as a movie camera, and a lot of terminology we use for CG cameras is similar, such as field of view, or pan, dolly, etc. for how we want to move the camera.

First, add a Camera node to the scene.

<img src="images/createcamera.png" height="300">

### Anatomy of a Camera

Select the Camera to see its properties in the Inspector

<img src="images/camera.png" height="300">

### Create a Spatial Node

Although the Camera has a transform, we'll create a parent Spatial node for it, so we can script the Camera using functions defined in the Spatial class.

## Add a Cube to the Scene

### Make the Cube

<img src="images/createmesh.png" height="300">

### Frame the Cube

### Move the Cube

## Anatomy of a Cube

### Align with View

## Camera Control

### Attach the Script

<img src="images/attachscript.png" height="300">

- name the script look_at (snake_case, following the Godot naming conventions)
- replace the *pass* line in the *_ready* function

Leave two empty lines before the *_ready* function, following [the Godot coding style conventions](https://docs.godotengine.org/en/stable/getting_started/workflow/project_setup/project_organization.html#style-guide).

```gdscript
extends Spatial


func _ready():
	look_at(Vector3(0,0,0),Vector3(0,0,-1));
```

## Add a Light

https://docs.godotengine.org/en/stable/tutorials/3d/lights_and_shadows.html#

<img src="images/createlight.png" height="300">

### Anatomy of a Light

<img src="images/light.png" height="300">

### Lightmapping

## Adjust the Light

### Make a Halo

## Add a Skybox

### Import the Skybox

### Anatomy of a Skybox

### Apply the Skybox

### Add a Flare

## Textures

https://docs.godotengine.org/en/stable/tutorials/3d/spatial_material.html

<img src="images/textureimport.png" height="300">

<img src="images/materialtexture.png" height="300">

### Browse the Asset Library

https://docs.godotengine.org/en/stable/tutorials/assetlib/what_is_assetlib.html


