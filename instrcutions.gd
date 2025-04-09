extends Node2D

func _ready() -> void:
	$start.connect("pressed", _on_start_pressed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _on_play_pressed() -> void:
	if ResourceLoader.exists("res://game.tscn"):
		get_tree().change_scene_to_file("res://game.tscn")
	else:
		print("Error: Game scene not found!")


func _on_start_pressed() -> void:
	pass # Replace with function body.
