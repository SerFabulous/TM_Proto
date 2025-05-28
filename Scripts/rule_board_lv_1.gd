extends Control

@onready var rule_container = $HBoxContainer
var rule_scene = preload("res://Scenes/rule_domino.tscn")

func _ready():
	PlayerData.rules_updated.connect(update_display)
	update_display()

func update_display():	
	for child in rule_container.get_children():
		child.queue_free()

	for rule_id in PlayerData.rules_reg_lv1:
		var data = PlayerData.rules_reg_lv1[rule_id]
		var rule_instance = rule_scene.instantiate()
		rule_instance.setup(data, rule_id)
		rule_container.add_child(rule_instance)
