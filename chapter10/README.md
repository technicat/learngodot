# Adding a Menu

## Adding a Container

Add a Container under the Pause node, name it Menu, and move the Button under it.

### Updating the Pause Script

We want the ESC key to toggle the Container instead of the Button, so change the argument of get_node to Menu.

```gdscript
extends Node

func _input(event):
	if event.is_action_pressed("ui_cancel"):
		get_tree().paused = !get_tree().paused
		get_node("Menu").visible = get_tree().paused
```

### Updating the Pause Button

```gdscript
extends Button

func _pressed():
	get_tree().paused = false
	get_parent().visible = false
```

## Adding a Quit Button

### Scripting the Quit Button

The Quit Button doesn't do anything, yet, so we attach a new script to it, specifying that when it's pressed, quit the game.

```gdscript
extends Button

func _pressed():
	get_tree().quit()
```



## Next Chapter

[](../chapter11/README.md)
