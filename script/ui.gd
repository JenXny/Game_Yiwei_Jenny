extends CanvasLayer

@onready var keys_label: Label = $keys_label

func _ready() -> void:
	PlayerValues.keys_value_changed.connect(on_keys_value_changed)
	
func on_keys_value_changed():
	keys_label.text = "Keys :" + str(PlayerValues.keys_amount)
