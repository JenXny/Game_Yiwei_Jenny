extends Node


var keys_amount = 0

signal keys_value_changed

func alter_keys(value):
	keys_amount += value
	emit_signal("keys_value_changed")
