extends CharacterBody2D


const SPEED = 300.0


func _process(delta):
	var direction = get_movement_vector().normalized()
	velocity = direction * SPEED
	move_and_slide()
	
	
func get_movement_vector():
	var move_vector = Vector2.ZERO
	var x_move = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	var y_move = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	return Vector2(x_move, y_move)
	
