extends Control

@onready var card_container = $HBoxContainer
var card_scene = preload("res://Scenes/card.tscn")

func _ready():
	PlayerData.cards_updated.connect(update_display)
	update_display()

func update_display():	
	for child in card_container.get_children():
		child.queue_free()

	for card_id in PlayerData.cards:
		if PlayerData.cards_reg.has(card_id):
			var data = PlayerData.cards_reg[card_id]
			var card_instance = card_scene.instantiate()
			card_instance.setup(data, card_id)
			card_container.add_child(card_instance)
