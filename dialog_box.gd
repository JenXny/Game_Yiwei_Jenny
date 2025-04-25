extends CanvasLayer

const AVATAR_MAP = {
	"girl": preload("res://girlPortrait.png"),
	"man": preload("res://manPortrait.png"),
	"book": preload("res://pngtree-empty-book-in-pixel-art-style-png-image_12655351.png"),
}

var dialogs = []
var current = 0

onready var content = $Content
onready var avatar = $Content/Avatar

func _ready():
	hide_dialog_box()
	show_dialog_box([
		{avatar="book", text="Content here."}
	])

func hide_dialog_box(_dialogs):
	dialogs = _dialogs
	content.show()
	_show_dialog(0)
