extends Control

var dialog = [
	"You are one a misson, to save human but first you need to practice!",
	"Yes sir!",
	"Before you do so, you need to train!!!!",
	"Yes sir!",
	]
	
var dialog_index = 0
var finishes = false

func _ready():
	load_dialog()


func load_dialog():
	$Sprite2.visible = false
	$Sprite.visible = true
	if dialog_index < dialog.size():
		$RichTextLabel.bbcode_text = dialog[dialog_index]
		if (dialog_index % 2 == 0):
			$Sprite2.visible = true
			$Sprite.visible = false
		
		
	dialog_index += 1
	if dialog_index == 4:
		get_tree().change_scene("res://UI/Menu.tscn")


func _on_Button_pressed():
	load_dialog()
