extends Node2D

func _on_builder_cards_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/builder_cards.tscn")

func _on_builder_rules_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/builder_rules.tscn")
