extends CanvasLayer


#TODO: Comment this

var path: String = "res://Dialogue_System/Dialogues/Test.json"

var index = -2;

var dialogue_data = {}
var dialogue = []

var is_active = false

func _ready() -> void:
	$DialogueBackDrop.visible = false

func start() -> void:
	if is_active:
		return
	is_active = true
	index = -2;
	dialogue = load_dialogue()
	next_line()

func load_dialogue() -> Array:
	var file = FileAccess.open(path, FileAccess.READ)
	if file:
		var text = file.get_as_text()
		var result = JSON.parse_string(text)
		if typeof(result) == TYPE_DICTIONARY:
			dialogue_data = result
			return dialogue_data["0"]
		else:
			push_error("Failed to parse JSON")
			return []
	else:
		push_error("Failed to parse JSON")
		return []
		
func process_line(line: String) -> String:
	var player_data = get_node("/root/PlayerData")
	line = line.replace("{name}", player_data.player_name)
	return line

func _input(event: InputEvent):
	if not is_active:
		return
	if event.is_action_pressed("ui_accept"):
		next_line()

func next_line():
	if index <= -2:
		index += 1
		return
	if index >= len(dialogue)-1:
		is_active = false
		$DialogueBackDrop.visible = is_active
		return
	$DialogueBackDrop.visible = is_active
	index += 1
	$DialogueBackDrop/Name.text = process_line(dialogue[index]["name"])
	$DialogueBackDrop/Dialogue.text = process_line(dialogue[index]["text"])
