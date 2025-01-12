extends CanvasLayer

func _input(event):
	if event is InputEventKey and event.pressed:
		if event.keycode == KEY_E and $Window.visible:
			print("Se cerró el inventario")
			$Window.visible = false
