extends Node

# A Global File used to save Information Pre and In Fight

# Coordinates of the Player (only needs to be updated when entering a fight) [to come back to]
var player_coords: Vector2 = Vector2.ZERO

var enemy_name: String = ""
var enemy: Node = null
var enemy_lost: bool = false

func reset_fight_information():
	player_coords = Vector2.ZERO

	enemy_name = ""
	enemy = null
	enemy_lost = false
