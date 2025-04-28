extends Area2D

@onready var dialog_2: RichTextLabel = $dialog2
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var threat: AudioStreamPlayer = $threat

func _ready() -> void:
	dialog_2.hide()


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		animation_player.play("npc_dialog2")

func play_button_sound():
	threat.play()
	
func _on_body_exited(body: Node2D) -> void:
	dialog_2.hide()
