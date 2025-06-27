extends CharacterBody2D

#	This is the Code for the Movement of the Player Character
#	Its only Prototypic, so open to changes
#	
#	Alright just testing if I managed to make github work properly :trol:

const SPEED = 300.0

@onready var animation_player = $CharacterSpriteAnimation

func _ready() -> void:
	self.position = FightData.player_coords
	set_motion_mode(MOTION_MODE_FLOATING)
	animation_player.stop()
	animation_player.play("idle")

func _physics_process(_delta: float) -> void:
	
	# Handles Left and Right
	var left_right: float = Input.get_axis("ui_left", "ui_right")
	if left_right:
		if left_right < 0:
			animation_player.play("walking_left")
		else:
			animation_player.play("walking_right")
		velocity.x = left_right * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	# Handles Up and Down
	var up_down: float = Input.get_axis("ui_up", "ui_down")
	if up_down:
		if !left_right:
			if up_down < 0:
				animation_player.play("walking_up")
			else:
				animation_player.play("walking_down")
		velocity.y = up_down * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
	
	if(!left_right and !up_down):
		animation_player.play("idle")
	velocity = velocity*velocity.normalized().abs()
	move_and_slide()
