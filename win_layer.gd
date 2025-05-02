extends CanvasLayer

func _ready() -> void:
	$return.connect("pressed", _on_return_pressed)

func _on_return_pressed() -> void:
	get_tree().change_scene_to_file("res://game_cover.tscn")
