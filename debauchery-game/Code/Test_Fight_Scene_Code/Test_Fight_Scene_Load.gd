extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#Sets the text on top of the Screen to the enemies Name
	var name_enemy = get_node("Name_Enemy")
	name_enemy.text = "[center] "+FightData.enemy_name+" [/center]" 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
