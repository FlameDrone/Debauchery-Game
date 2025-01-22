extends Button

#Code for the Gender Choice Buttons
#The choice doesn't matter

# On Scene Load
func _ready() -> void:
	self.pressed.connect(self._button_pressed)

# On Button press
# Accepts the Choice (It doesn't Matter)
func _button_pressed():
	get_tree().change_scene_to_file("res://Scenes/Name_Scene.tscn")
