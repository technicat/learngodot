# Making a Scene

https://docs.godotengine.org/en/stable/tutorials/3d/introduction_to_3d.html

## Create a Scene

In just about all game engines, or at least 3D game engines, a game is composed of one or more levels or scenes (CryEngine and Unreal use the term level, Unity and Godo use scene). The term level is probably more recognizable to game players, but I think scene is a good analogy with movies. Maybe set is an even better analogy, as a scene is the arrangement of game assets (sometimes called props, to take the movie analogy further).

Godot is no exception -- a Godot project consists of one or more scenes, and each
scene is made up of a [hierarchy of nodes](https://docs.godotengine.org/en/stable/getting_started/step_by_step/scenes_and_nodes.html), each node representing a position/rotation/scale with respect to its parent node.

In computer graphics, such a hierarchy is called a scene graph, but more specifically it's a tree, i.e. there's a single starting root node and there are no circularities in the graph.
In fact, Godot callas it a [SceneTree](https://docs.godotengine.org/en/stable/getting_started/step_by_step/scene_tree.html).

### Node3D

In Godot, the root node determines the type of scene, so the first thing that the editor asks you to do with an empty project is select the appropriate node/scene to start. When you select 3D Scene, the editor will create a [Node3D](https://docs.godotengine.org/en/latest/tutorials/3d/introduction_to_3d.html#node3d-node) as the root node.

<img src="images/3dscene.png" height="100">

The [Node3D](https://docs.godotengine.org/en/latest/tutorials/3d/introduction_to_3d.html#node3d-node) is the most basic 3D node, conatining a [transform](https://docs.godotengine.org/en/stable/tutorials/3d/using_transforms.html), which encapsulates the node's 3D translation (position), rotation, and scale, relative to any parent nodes.

<img src="images/node3dinspector.png" height="500">

The translation, rotation, and scale are individually editable in the Inspector, but they are combined in a 4x4 matrix,
so they can be concatenated (multiplied) with parent transform matrices to calculate the global 3D coordinates of the node.

All other 3D nodes, such as [Camera](https://docs.godotengine.org/en/stable/classes/class_camera.html),
which we'll add next, are subclasses of [Node3D](https://docs.godotengine.org/en/latest/tutorials/3d/introduction_to_3d.html#node3d-node),
so each will also have a transform.

## Save the Scene

If you hit the Play button now, the editor will still say you first need to select a scene, so you need to save the scene.

<img src="images/savescene.png" height="400">

The [Godot style guide](https://docs.godotengine.org/en/stable/getting_started/workflow/project_setup/project_organization.html#style-guide)
recommends snake_case for filenames. Here we just save it as "scene.tscn" (.tscn is the automatically supplied suffix for scene files).
After saving, you should see the new file in the FileSystem view.

<img src="images/savedscene.png" height="200">

If you hit Play now, you can select the saved scene as the scene to play.

<img src="images/selectscene.png" height="300">

But the game window doesn't display anything,

<img src="images/playnocamera.png" height="400">

This is because the scene doesn't have a Camera.

## Create a Camera

In a 3D scene, the camera represents the view point, so it could also be considered the simulated eye (or eyes, if we're doing stereo as in virtual reality), but you can also think of it as a movie camera. A lot of terminology we use for CG cameras is similar, such as setting the field of view (FoV), or animating the camera with pan, zoom, dolly moves etc.

To add a Camera to the scene, right-click/control-click on the root node and select Add Child.

<img src="images/addchild.png" height="150">

There are a lot of possible nodes to add, but you can find the Camera node quickly by typing Camera in the search field.

<img src="images/createcamera.png" height="400">

Now you should see a Camera node under the scene root node.

<img src="images/scenecamera.png" height="100">

Select the Camera to see its properties in the Inspector

<img src="images/camera.png" height="300">

And when you hit Play, the default environment (blue skies!) is now rendere.

<img src="images/playcamera.png" height="300">

## Next Chapter

[Creating a Cube](../chapter03/README.md)

