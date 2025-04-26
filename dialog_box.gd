extends CanvasLayer

const AVATAR_MAP = {
	"girl": preload("res://girlPortrait.png"),
	"man": preload("res://manPortrait.png"),
	"book": preload("res://pngtree-empty-book-in-pixel-art-style-png-image_12655351.png"),
}

@export var dialogs:Dialog
var current = 0

@onready var content = $Content
@onready var avatar = $Content/Avatar

func _ready():
	#hide_dialog_box()
	show_dialog(0)

func _unhandled_input(event):
	if event.is_action_pressed("ui_accept"):
		if current + 1 < dialogs.size():
			show_dialog(current + 1)
		else:
			hide_dialog_box()

func hide_dialog_box():
	content.hide()


func show_dialog(index):
	current = index
	var dialog = dialogs[current]
	content.text = dialog.text
	avatar.texture = AVATAR_MAP[dialog.avatar]
