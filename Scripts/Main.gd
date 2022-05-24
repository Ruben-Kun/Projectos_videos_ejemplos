extends Spatial


#						POSICION ACTUAL DEL SUJETO		TAMAÑO ESCALA REAL-3d			MAPA - 2d
func convert_Real2Map(posicion: Vector3,				Size_real:Vector3,				Map:Texture) -> Vector2: #CONVIERTE POSICION DE ESCALA REAL A ESCALA DEL MAPA
	var posicion_total:Vector2
	posicion_total.x = (Map.get_size().x * posicion.x) / Size_real.x #X
	posicion_total.y = (Map.get_size().y * posicion.z) / Size_real.z #Y
	return posicion_total


func _process(delta: float) -> void:
	#POSICION DEL PUNTITO DEL MAPA (OSEA, EL JUGADOR)
	$Map/PointPlayer.global_position = convert_Real2Map($Personaje.global_transform.origin, Vector3(20, 0, 20), $Map.texture)


func _input(event: InputEvent) -> void:
	#MOSTRAR MAPA
	if Input.is_key_pressed(KEY_M):
		$Map.show()
	else:
		$Map.hide()
