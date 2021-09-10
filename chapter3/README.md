# Making a Scene

## Create a New Project

https://docs.godotengine.org/en/stable/tutorials/3d/introduction_to_3d.html

https://docs.godotengine.org/en/stable/getting_started/step_by_step/scenes_and_nodes.html

## Create a Scene

Just about all game engines, or at least 3D game engines, have the concept of a scene, where a scene is equivalent to what game players see as levels in a game. A scene is typically implemented as a hierarchy, or tree, of nodes. Godot scenes are used in the same way (there is always one current scene in a game, and there has to be a designated start scene), but Godo scenes are more general - any 3D tree structure or branch of that structure can be saved out as a scene, and conversely, a scene can include other scenes as branches. In other words, scenes are reusable branches.

https://docs.godotengine.org/en/stable/tutorials/3d/introduction_to_3d.html#spatial-node

<img src="images/createspatial.png">

### Anatomy of a Spatial Node

<img src="images/createspatial.png">

https://docs.godotengine.org/en/stable/tutorials/3d/using_transforms.html

## Add a Camera

If you hit Play now, you won't see anything because our scene doesn't have a Camera. In a 3D scene, the camera represents the view point, so it could also be considered the simulated eye (or eyes, if we're doing stereo as in virtual reality), but you can also think of it as a movie camera, and a lot of terminology we use for CG cameras is similar, such as field of view, or pan, dolly, etc. for how we want to move the camera.

<img src="images/createcamera.png">

### Anatomy of a Camera

<img src="images/camera.png">



### Create a Spatial Node

<img src="images/camera.png">

## Add a Cube to the Scene

### Make the Cube

<img src="images/createmesh.png">

### Frame the Cube

### Move the Cube

## Anatomy of a Cube

### Transform

### MeshFilter

### MeshRenderer

### BoxCollider

### Align with View

## Camera Control

### Import the Script

### Attach the Script

## Add a Light

https://docs.godotengine.org/en/stable/tutorials/3d/lights_and_shadows.html#

<img src="images/createlight.png">

### Anatomy of a Light

<img src="images/light.png">

### Type

### Range

### Color

### Intensity

### Shadow Type

### Cookie

### Culling Mask

### Flare

### Halo

### Render Mode

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

<img src="images/textureimport.png">

<img src="images/materialtexture.png">

### Browse the Asset Library

https://docs.godotengine.org/en/stable/tutorials/assetlib/what_is_assetlib.html

## Explore Further

### Godo Docs

https://docs.godotengine.org/en/stable/index.html

### Godot Reference

### Computer Graphics



