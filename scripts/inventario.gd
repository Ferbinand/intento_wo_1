extends CanvasLayer
#hacer una signal para ejecutar el input event de Main en caso de que no funcione de esta manera. 
#Ya que solo funciona si hacemos click en la pantalla principal
func _input(event):
	if event is InputEventKey and event.pressed:
		if event.keycode == KEY_Y and $Window.visible:
			print("Se cerró el inventario")
			$Window.visible = false
