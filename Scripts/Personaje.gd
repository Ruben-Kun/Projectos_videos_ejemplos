extends Camera

const V = 25

func _process(delta: float) -> void:

	if Input.is_action_pressed("ui_up"):
		global_transform.origin.z -= V * delta

	elif Input.is_action_pressed("ui_down"):
		global_transform.origin.z += V * delta


	if Input.is_action_pressed("ui_right"):
		global_transform.origin.x += V * delta

	elif Input.is_action_pressed("ui_left"):
		global_transform.origin.x -= V * delta
	
