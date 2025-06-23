extends Node

#No clue if this needs to be async cause I am not sure how thread-safe this is
#Probably not that much tho, but maybe you never know

var _database = {}

#Adds a state to the database
#Input:
# -name of the state to save as string
# -state you want to save as dictionary
#Output:
# -success of adding the thing to the database
#Returns false if the element is already in the database 
func add_to_database(name: String, state: Dictionary) -> bool:
	if(_database.has(name)):
		return false
	_database[name] = state
	return true

#Gets a state from the database
#Input:
# -name of the state to get as string
#Output:
# -empty Dictionary if the state isnt in our database
#  else the state
func get_from_database(name: String) -> Dictionary:
	if(!_database.has(name)):
		return {}
	return _database[name]

#Update a state from the database
#Input:
# -name of the state to change as string
# -state you want to change as dictionary
#Output:
# -success of adding the thing to the database
#Returns false if the element is not in the database 
func update_from_database(name: String, state: Dictionary) -> bool:
	if(_database.has(name)):
		return false
	_database[name] = state
	return true
