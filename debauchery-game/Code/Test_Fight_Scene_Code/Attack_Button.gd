extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

# When Attack Button is pressed Enemy dies and we come back to our test Scene
func _on_pressed() -> void:
	FightData.enemy_lost = true
	get_tree().change_scene_to_file("res://Scenes/Test_Scene.tscn")
