extends Button

#Code for the Start Button

# On Scene Load
func _ready() -> void:
	self.pressed.connect(self._button_pressed)

# On Button press
# Starts the Game
func _button_pressed():
	get_tree().change_scene_to_file("res://Scenes/Gender_Scene.tscn")
