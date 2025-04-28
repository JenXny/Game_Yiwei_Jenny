extends Area2D

@onready var objective_text: RichTextLabel = $ObjectiveText
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var typing: AudioStreamPlayer = $typing
@export var lock: StaticBody2D

func _ready() -> void:
	objective_text.hide()


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		if PlayerValues.keys_amount < 3:
			animation_player.play("show_objective")
		elif PlayerValues.keys_amount >= 3:
			objective_text.text = "You may leave"
			animation_player.play("success")
			if lock: 
				lock.queue_free()

func play_button_sound():
	typing.play()


func _on_body_exited(body: Node2D) -> void:
	objective_text.hide()
