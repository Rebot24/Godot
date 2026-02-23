extends CharacterBody2D

var speed = 200
var sprint_multiplier = 1.5

func _physics_process(delta: float):	
	var direction = Input.get_vector("mov_left", "mov_right", "mov_up", "mov_down")
	
	direction = direction.normalized()
	
	var speed_actual = speed
	
	if Input.is_action_pressed("sprint"):
		speed_actual *= sprint_multiplier
	
	velocity = direction * speed_actual
	
	move_and_slide()
