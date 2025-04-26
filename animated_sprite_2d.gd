extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_key_pressed(KEY_A):
		position.x -= 0.8
		play("walk")
		flip_h = true
	elif Input.is_key_pressed(KEY_D):
		position.x += 0.8
		play("walk")
		flip_h = false
	elif Input.is_key_pressed(KEY_W):
		position.y -= 0.8
		play("walk")
	elif Input.is_key_pressed(KEY_S):
		position.y += 0.8
		play("walk")
	else:
		play("idle")
