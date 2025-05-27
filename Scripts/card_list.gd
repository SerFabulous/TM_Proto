extends Control

@onready var card_container = $ScrollContainer/HBoxContainer
var card_scene = preload("res://Scenes/card.tscn")

func _ready():
	for card_id in PlayerData.cards_reg.keys():
		var card_data = PlayerData.cards_reg[card_id]
		var card_instance = card_scene.instantiate()
		card_instance.setup(card_data, card_id)  # Pass both data and ID
		card_container.add_child(card_instance)
