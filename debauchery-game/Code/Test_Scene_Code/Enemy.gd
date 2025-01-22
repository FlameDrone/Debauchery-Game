extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#Test if enemy lost currently not scaleable to multiple enemies on screen
	if FightData.enemy_lost:
		FightData.enemy_lost = false
		self.queue_free()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

# When Character collides with enemy, change to the fight scene and update character position to come back later
func _on_body_entered(body: Node2D) -> void:
	if(body.is_in_group("Character_Group")):
		#Stops player from moving
		body.velocity = Vector2.ZERO
		#Saves the relevant Pre-Fight Information (enemy name needs to be updated later)
		FightData.player_coords = body.position
		FightData.enemy = self
		FightData.enemy_name = "Dingus"
		get_tree().change_scene_to_file("res://Scenes/Test_Fight_Scene.tscn")
