extends Area2D

var talkable = false
var dialogue: Node

func _ready() -> void:
	dialogue = get_node("/root/DialogueBox")
	var talkable = false

func _input(event: InputEvent) -> void:
	if talkable and event.is_action_pressed("ui_select"):
		
		talkable = false
		dialogue.start()
		talkable = true

func _on_body_entered(body: Node2D) -> void:
	if(body.is_in_group("Character_Group")):
		talkable = true
	
func _on_body_exited(body: Node2D) -> void:
	if(body.is_in_group("Character_Group")):
		talkable = false
