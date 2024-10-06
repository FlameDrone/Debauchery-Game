extends CharacterBody2D

#	This is the Code for the Movement of the Player Character
#	Its only Prototypic, so open to changes
#	[Currently only working with Arrowkeys]

const SPEED = 300.0

func _physics_process(_delta: float) -> void:
	
	# Handles Left and Right
	var left_right: float = Input.get_axis("ui_left", "ui_right")
	if left_right:
		velocity.x = left_right * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	# Handles Up and Down
	var up_down: float = Input.get_axis("ui_up", "ui_down")
	if up_down:
		velocity.y = up_down * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
	

	move_and_slide()
