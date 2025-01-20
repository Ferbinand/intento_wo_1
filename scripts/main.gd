extends Node2D

var tiempo_partida = 100
var item_label = Label
var item_img = Sprite2D

var spawn_interval := 20.0  # Tiempo entre la aparición de ítems
var spawn_height := -50  # Altura desde donde caen los ítems
var terrain_width := 800  # Ancho del terreno para calcular posiciones aleatorias



func _ready() -> void:
	print("partida empezada")
	_iniciar_partida()

func _input(event):
	if event is InputEventKey and event.pressed:
		if event.keycode == KEY_E and !$UI/Inventario.visible:
			$UI/Inventario.visible = true
			print("Se abrio el inventario")
		elif event.keycode == KEY_E and $UI/Inventario.visible:
			$UI/Inventario.visible = false
			print("Se cerró el inventario")

func actualizar_txt_timer():
	$UI/LabelPartidaTimer.text = str(tiempo_partida)

func _iniciar_partida():
	$PartidaTimer.start()

func spawn_item() -> void:
	print("funcion spwan item")

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
