# Creating a Cube

## Make a Mesh

In the same manner as we added a Camera to the scene in the previous chapter, we can add a cube. Specifically, we'll add a MeshFilter.

<img src="images/createmesh.png" height="400">

You should now see the MeshInstance node under the scene root node.

<img src="images/meshinstancescene.png" height="200">

We still have to assign a mesh to the MeshInstance. We'll use a CubeMesh.

<img src="images/meshinstancemesh.png" height="500">

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

## Textures

https://docs.godotengine.org/en/stable/tutorials/3d/spatial_material.html

<img src="images/textureimport.png" height="300">

<img src="images/materialtexture.png" height="300">

### Browse the Asset Library

https://docs.godotengine.org/en/stable/tutorials/assetlib/what_is_assetlib.html


