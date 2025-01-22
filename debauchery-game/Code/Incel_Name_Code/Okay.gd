extends Button

#Code for the Okay Button in the Incel Scene after the Name Scene
#Doesn't Matter what Button you press

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.pressed.connect(self._button_pressed)

# On Button press
# Switches currently to the Test_Scene
func _button_pressed():
	get_tree().change_scene_to_file("res://Scenes/Test_Scene.tscn")
