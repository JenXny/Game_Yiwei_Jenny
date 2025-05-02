extends Area2D

@onready var timer: Timer = $Timer


#func _on_body_entered(body: Node2D) -> void:
#	print("You died.")
#	get_tree().reload_current_scene()
#	timer.start()
#	PlayerValues.emit_signal("reset_world", body)

func _on_body_entered(body: Node2D) -> void:
	print("You died.")
	get_tree().change_scene_to_file("res://game_over_layer.tscn") 
	PlayerValues.emit_signal("reset_world", body)


func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
