extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

#Kills yourself
func _on_pressed() -> void:
	FightData.reset_fight_information();
	get_tree().change_scene_to_file("res://Scenes/Main_Screen_Scene.tscn")
