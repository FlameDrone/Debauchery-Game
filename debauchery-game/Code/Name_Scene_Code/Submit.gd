extends Button

# Code for the Name Submit button

# On Scene Load
func _ready() -> void:
	self.pressed.connect(self._button_pressed)

# On Button press
# Changes the Scene (Currently to the Incel_Name_Scene) (same code as in Name_Field.gd)
func _button_pressed():
	var player_data = get_node("/root/PlayerData")
	if player_data.player_name.length() > 0:
		get_tree().change_scene_to_file("res://Scenes/Incel_Name_Scene.tscn")
