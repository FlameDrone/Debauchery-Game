extends Node

func _ready():
	print(State._database)
	for enemy in get_tree().get_nodes_in_group("Enemy_Group"):
		if State.contains(enemy.name):
			if State.get_from_database(enemy.name)["defeated"]:
				enemy.queue_free()
