extends Node

# A Global File used to save Information Pre and In Fight

# Coordinates of the Player (only needs to be updated when entering a fight) [to come back to]
var player_coords: Vector2 = Vector2.ZERO

var enemy_name: String = ""
var enemy: Node = null
var enemy_key:int = 0

#remembers if a enemy lifes or dies
var enemey_dict: Dictionary = {}

func insert_new_enemy(key, value:bool):
	if key in enemey_dict:
		return
	enemey_dict[key] = value

func kill_enemy(key):
	if !(key in enemey_dict):
		return
	enemey_dict[key] = false

func revive_enemy(key):
	if !(key in enemey_dict):
		return
	enemey_dict[key] = true
	
func get_enemy_status(key) -> bool:
	return enemey_dict[key]
	
func clear_enemy_dict():
	enemey_dict = {}

#100% needs to be updated
func reset_fight_information():
	player_coords = Vector2.ZERO

	enemy_name = ""
	enemy = null
	enemy_key = 0
