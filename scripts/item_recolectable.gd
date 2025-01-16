extends Area2D

@export var gravity_force := 800  # Fuerza de la gravedad
@export var velocity := Vector2.ZERO  # Velocidad inicial del ítem

func _ready():
	pass

func _physics_process(delta):
	# Aplicar gravedad
	velocity.y += gravity_force * delta
	position += velocity * delta  # Mueve el ítem según la velocidad
	# Detener el movimiento al alcanzar un límite, si es necesario
	if position.y >= 650:  # Supón que 500 es el suelo  
		velocity = Vector2.ZERO
		position.y = 650
