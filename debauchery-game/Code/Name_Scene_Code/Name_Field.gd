extends LineEdit

# The Code for the input of the Name

# On Scene Load
func _ready() -> void:
	grab_focus()

# When Pressing Enter
# Changes the Scene (Currently to the test_scene) (same code as in Submit.gd)
func _on_text_submitted(new_text: String) -> void:
	var player_data = get_node("/root/PlayerData")
	if player_data.player_name.length() > 0:
		get_tree().change_scene_to_file("res://Scenes/Test_Scene.tscn")

#When Input changes
#Sets the Player-Name to the current input
func _on_text_changed(new_text: String) -> void:
	var player_data = get_node("/root/PlayerData")
	player_data.player_name = new_text
