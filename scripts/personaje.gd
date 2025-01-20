extends CharacterBody2D

# Velocidad y fuerza de salto
@export var speed := 200
@export var jump_force := -400
@export var gravity := 800
var label_vida

func _ready():
	label_vida = get_node("CollisionShape2D/Label")

func _physics_process(delta):
	# Movimiento lateral
	if Input.is_action_pressed("mover_izquierda"):
		velocity.x = -speed
	elif Input.is_action_pressed("mover_derecha"):
		velocity.x = speed
	else:
		velocity.x = 0

	# Salto
	if Input.is_action_just_pressed("saltar") and is_on_floor():
		velocity.y = jump_force
		tomar_daño(10)

	# Aplicar gravedad
	if not is_on_floor():
		velocity.y += gravity * delta
	


	# Mover el personaje
	move_and_slide()

var vida := 100 # Vida inicial
# Función para que el personaje reciba daño
func tomar_daño(cantidad):
	vida -= cantidad
	if vida <= 0:
		vida = 0
		print("El personaje ha muerto")  # Esto puede reemplazarse con una lógica de muerte.
	label_vida.text = "Vida:" + str(vida)
