extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_key_pressed(KEY_A):
		play("walk")
		flip_h = true
	if Input.is_key_pressed(KEY_LEFT):
		play("walk")
		flip_h = true
	elif Input.is_key_pressed(KEY_D):
		play("walk")
		flip_h = false
	elif Input.is_key_pressed(KEY_RIGHT):
		play("walk")
		flip_h = false
	elif Input.is_key_pressed(KEY_W):
		play("walk")
	elif Input.is_key_pressed(KEY_UP):
		play("walk")
	elif Input.is_key_pressed(KEY_S):
		play("walk")
	elif Input.is_key_pressed(KEY_DOWN):
		play("walk")
	else:
		play("idle")
