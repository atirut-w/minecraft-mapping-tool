extends MenuBar


@onready var file_menu := $File


func _ready() -> void:
	file_menu.id_pressed.connect(file_menu_id_pressed)


func file_menu_id_pressed(id: int) -> void:
	match id:
		99:
			get_tree().quit()
		_:
			push_warning("TODO: implement ID %d" % id)
