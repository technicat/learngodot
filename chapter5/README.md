# Texturing the Cube

The cube is still pretty bland, so let's add a texture to it.

### Browse the Asset Library

Any image file can be imported as a texture,
but we find some that are properly designed as textures in the Godot [asset library](https://docs.godotengine.org/en/stable/tutorials/assetlib/what_is_assetlib.html).

Select the Asset Lib tab on the workspace view and select Material as the asset type. A bunch of asset packages containing textures will appear.

<img src="images/assetlibrarymaterials.png" height="300">

## Add a Material

To texture a the cube, we first need to assign a material to the MeshInstance.
Specifically, we need to click on the Empty material slot and select a [Spatial Material](https://docs.godotengine.org/en/stable/tutorials/3d/spatial_material.html).

<img src="images/materialnone.png" height="300">

And then Edit the new material.

<img src="images/materialedit.png" height="300">

## Next Chapter

[Spinning the Cube](../chapter6/README.md)
