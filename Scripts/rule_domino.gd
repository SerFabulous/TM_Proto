extends Button

signal rule_clicked(rule_id: String)

var rule_id: String

func setup(data: Dictionary, id: String):
	rule_id = id

	$VBoxContainer/current_state.text = data.current_state
	$VBoxContainer/read_symbol.text = data.read_symbol

	$VBoxContainer/new_state.text = data.new_state
	$VBoxContainer/write_symbol.text = data.write_symbol

	$VBoxContainer/direction.text = data.direction

func _pressed():
	emit_signal("rule_clicked", rule_id)
