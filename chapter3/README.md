# Making a Scene

https://docs.godotengine.org/en/stable/tutorials/3d/introduction_to_3d.html

## Create a Project

When you select New Project from the Godot launcher, you'll be prompted for the project location and then presented with the Godot editor, showing two files automatically created in the project directory: a default icon, and a default environment.

<img src="images/newproject.png" height="500">

## Create a Scene

In just about all game engines, or at least 3D game engines, a game is composed of one or more levels or scenes (CryEngine and Unreal use the term level, Unity and Godo use scene). The term level is probably more recognizable to game players, but I think scene is a good analogy with movies. Maybe set is an even better analogy, as a scene is the arrangement of game assets (sometimes called props, to take the movie analogy further).

Godot is no exception -- a Godot project consists of one or more scenes, and each
scene is made up of a [hierarchy of nodes](https://docs.godotengine.org/en/stable/getting_started/step_by_step/scenes_and_nodes.html), each node representing a position/rotation/scale with respect to its parent node.

In computer graphics, such a hierarchy is called a scene graph, but more specifically it's a tree, i.e. there's a single starting root node and there are no circularities in the graph.

In Godot, the root node determines the type of scene, so the first thing that the editor asks you to do with an empty project is select the appropriate node/scene to start. When you select 3D Scene, the editor will create a [Spatial node](https://docs.godotengine.org/en/stable/tutorials/3d/introduction_to_3d.html#spatial-node) as the root node.

<img src="images/spatialscene.png" height="100">

The key property of a Spatial node is its [transform](https://docs.godotengine.org/en/stable/tutorials/3d/using_transforms.html), which encapsulates the node's 3D position, rotation, and scale (relative to any parent transforms).

<img src="images/spatialinspector.png" height="500">

## Save the Scene

If you hit the Play button now, the editor will still say you first need to select a scene, so you need to save the scene.

<img src="images/savescene.png" height="400">



If you hit Play now, you won't see anything because our scene doesn't have a Camera.

<img src="images/playnocamera.png" height="400">

## Create a Camera

In a 3D scene, the camera represents the view point, so it could also be considered the simulated eye (or eyes, if we're doing stereo as in virtual reality), but you can also think of it as a movie camera, and a lot of terminology we use for CG cameras is similar, such as field of view, or pan, dolly, etc. for how we want to move the camera.

To add a Camera to the scene, right-click/control-click on the root node and select Add Child.

<img src="images/addchild.png" height="150">

There are a lot of possible nodes to add, but you can find the Camera node quickly by typing Camera in the search field.

<img src="images/createcamera.png" height="400">

### Anatomy of a Camera

Select the Camera to see its properties in the Inspector

<img src="images/camera.png" height="300">

### Create a Spatial Node

Although the Camera has a transform, we'll create a parent Spatial node for it, so we can script the Camera using functions defined in the Spatial class.

<img src="images/createspatial.png" height="400">

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


