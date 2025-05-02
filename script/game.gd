extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	PlayerValues.reset_world.connect(_on_body_entered)


func _on_body_entered(_body: Node2D) -> void:
	call_deferred("reset_world")

func reset_world():
	PlayerValues.keys_amount = 0
	PlayerValues.reset_world
	get_tree().change_scene_to_file("res://game_over_layer.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
