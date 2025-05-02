extends Area2D


@onready var key_collected_sound: AudioStreamPlayer = $key_collected
@onready var sprite_2d: Sprite2D = $Sprite2D


func _on_body_entered(_body: Node2D) -> void:
	PlayerValues.alter_keys(1)
	key_collected_sound.play()
	sprite_2d.hide()
	set_deferred("monitoring",false)

func _on_key_collected_finished() -> void:
	queue_free()
	get_tree().change_scene_to_file("res://Win_layer.tscn")
