extends Timer
var contador_general = 0
var item_recolectable_tiempo_spawn = 20
# var item_recolectable = preload("ruta de la escena")  #PARA RESTRUCTURAR


func _spawn(tiempo):
	if((tiempo%2) == 0):
		print("se creo un item")
		#var item_duplicado = $ItemRecolectable.instantiate()
		#add_child(item_duplicado)
	pass

func _on_timeout() -> void:
	contador_general+=1
	_spawn(contador_general)
