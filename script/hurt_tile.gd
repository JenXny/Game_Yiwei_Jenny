extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		call_deferred("reset_world")

func reset_world():
	get_tree().change_scene_to_file("res://game.tscn")
