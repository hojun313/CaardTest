extends Control

signal card_clicked(card_id: int)

var card_id = 0


func _ready():
	pass # Replace with function body.

func _on_mouse_entered() -> void:
	self.color = Color(1, 1, 1, 0.5)


func _on_mouse_exited() -> void:
	self.color = Color(1, 1, 1, 1)


func _on_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			emit_signal("card_clicked", card_id)