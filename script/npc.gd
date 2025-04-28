extends Area2D

@onready var dialog: RichTextLabel = $Dialog
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var npc_sound: AudioStreamPlayer = $npc_sound


func _ready() -> void:
	dialog.hide()

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		animation_player.play("npc_dialog")

func play_button_sound():
	npc_sound.play()

func _on_body_exited(body: Node2D) -> void:
	dialog.hide()
