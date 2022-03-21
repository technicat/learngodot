# Adding a GUI

## A Pause Button

I'm fine with just using the ESC key to pause and unpause a game, but conventionally there is a pause [GUI](https://docs.godotengine.org/en/stable/tutorials/ui/index.html),

### Adding a Button

Let's start with adding an Unpause [button](https://docs.godotengine.org/en/stable/classes/class_button.html#class-button) that appears when the game is paused. We'll add a Button as a child of the Pause node.

<img src="images/createbutton.png" height="300">

<img src="images/pausebutton.png" height="300">

Set the Button text to "Play".

<img src="images/playbutton.png" height="300">


By default, it will inherit the pause mode of the parent Pause node, which is to always run whether or not the scene is paused.

<img src="images/buttonpausemode.png" height="300">

Set the [size and anchors](https://docs.godotengine.org/en/stable/tutorials/ui/size_and_anchors.html) so that the Button is centered in the screen (no matter what resolution the screen is).

<img src="images/buttonanchor.png" height="300">

### Showing the Button

We add one more line to our pause script, using [get_node](https://docs.godotengine.org/en/stable/classes/class_node.html) to search for a child node named "Button" and making it visible if (and only if) the scene is paused.

```gdscript
extends Node

func _input(event):
	if event.is_action_pressed("ui_cancel"):
		get_tree().paused = !get_tree().paused
		get_node("Button").visible = get_tree().paused
```

<img src="images/buttonanchor.png" height="300">

### Scripting the Button

The Button doesn't do anything, yet, so we attach a new script to it, specifying that when it's pressed, the scene is unpaused, and the Button is set to invisible.

```gdscript
extends Button

func _pressed():
	get_tree().paused = false
	visible = false
```

## Next Chapter

[Adding a Menu](../chapter10/README.md)




