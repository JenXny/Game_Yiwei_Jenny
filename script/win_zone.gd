extends Area2D

func _on_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://Win_layer.tscn") 
	PlayerValues.emit_signal("reset_world", body)
