extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var card1 = get_node("CanvasLayer/Control/게임매니저/FieldCardDropzone/카드")
	
	card1.card_clicked.connect("_on_card_clicked")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_card_clicked(card_id: int) -> void:
	print("Card clicked: ", card_id)