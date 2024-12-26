extends Control

signal card_clicked(card_id: int)

var card_id = 0


func _ready():
	pass

func _on_mouse_entered() -> void:
	self.color = Color(1, 1, 1, 0.5)


func _on_mouse_exited() -> void:
	self.color = Color(1, 1, 1, 1)


func _on_button_pressed() -> void:
	emit_signal("card_clicked", card_id)