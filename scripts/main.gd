extends Node2D

func _input(event):
	if event is InputEventKey and event.pressed:
		if event.keycode == KEY_E and !$Inventario/Window.visible:
			$Inventario/Window.visible = true
			print("Se abrio el inventario")
