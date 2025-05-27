extends Control

@onready var rule_container = $ScrollContainer/HBoxContainer
var rule_scene = preload("res://Scenes/rule_domino.tscn")

func _ready():
	for rule_id in PlayerData.rules_reg.keys():
		var data = PlayerData.rules_reg[rule_id]
		var domino = rule_scene.instantiate()
		domino.setup(data, rule_id)
		domino.connect("rule_clicked", _on_rule_clicked)
		rule_container.add_child(domino)

func _on_rule_clicked(rule_id: String):
	if PlayerData.rules.has(rule_id):
		PlayerData.remove_rule(rule_id)
	else:
		PlayerData.add_rule(rule_id)
