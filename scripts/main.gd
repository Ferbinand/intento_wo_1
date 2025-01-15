extends Node2D

var tiempo_partida = 100

func _input(event):
	if event is InputEventKey and event.pressed:
		if event.keycode == KEY_E and !$Inventario/Window.visible:
			$Inventario/Window.visible = true
			print("Se abrio el inventario")
		elif event.keycode == KEY_E and $Inventario/Window.visible:
			$Inventario/Window.visible = false
			print("Se cerró el inventario")

func _ready() -> void:
	print("partida empezada")
	_iniciar_partida()

func actualizar_txt_timer():
	$UI/LabelPartidaTimer.text = str(tiempo_partida)

func _iniciar_partida():
	$PartidaTimer.start()

func _on_partida_timer_timeout() -> void:
	tiempo_partida -= 1
	actualizar_txt_timer()
	# Finalizar la partida si el tiempo llega a 0
	if tiempo_partida <= 0:
		$PartidaTimer.stop()
		terminar_partida()
	pass # Replace with function body.

func terminar_partida() -> void:
	print("Partida finalizada")
