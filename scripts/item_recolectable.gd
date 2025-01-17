extends Area2D

@export var fall_speed := 200  # Velocidad de caída
var ground_y := 650  # Coordenada Y del suelo (ajusta según tu terreno)

func _physics_process(delta: float) -> void:
	# Mover hacia abajo
	position.y += fall_speed * delta

	# Detener el movimiento al alcanzar el suelo
	if position.y >= ground_y:
		position.y = ground_y
		fall_speed = 0  # Detener la caída
