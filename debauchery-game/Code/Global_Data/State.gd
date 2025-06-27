extends Node

#No clue if this needs to be async cause I am not sure how thread-safe this is
#Probably not that much tho, but maybe you never know

var _database = {}

#Adds a state to the database
#Input:
# -identifier of the state to save as string
# -state you want to save as dictionary
#Output:
# -success of adding the thing to the database
#Returns false if the element is already in the database 
func add_to_database(identifier: String, state: Dictionary) -> bool:
	if(_database.has(identifier)):
		return false
	_database[identifier] = state
	return true

#Gets a state from the database
#Input:
# -identifier of the state to get as string
#Output:
# -empty Dictionary if the state isnt in our database
#  else the state
func get_from_database(identifier: String) -> Dictionary:
	if(!_database.has(identifier)):
		return {}
	return _database[identifier]

#Update a state from the database
#Input:
# -identifier of the state to change as string
# -state you want to change as dictionary
#Output:
# -success of adding the thing to the database
#Returns false if the element is not in the database 
func update_from_database(identifier: String, state: Dictionary) -> bool:
	if(_database.has(identifier)):
		return false
	_database[identifier] = state
	return true

func contains(identifier: String) -> bool:
	return _database.has(identifier)
