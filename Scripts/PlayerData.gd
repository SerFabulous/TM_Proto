extends Node
signal cards_updated
signal rules_updated

var cards: Array = []
var rules: Array = []

var cards_reg = {
	"card_000": {"name": "name_000", "def_sym": "R", "EffectR": "R_000", "EffectG": "G_000", "EffectB": "B_000"},
	"card_001": {"name": "name_001", "def_sym": "R", "EffectR": "R_001", "EffectG": "G_001", "EffectB": "B_001"},
	"card_002": {"name": "name_002", "def_sym": "R", "EffectR": "R_002", "EffectG": "G_002", "EffectB": "B_002"},
	"card_003": {"name": "name_003", "def_sym": "R", "EffectR": "R_003", "EffectG": "G_003", "EffectB": "B_003"},
	"card_004": {"name": "name_004", "def_sym": "R", "EffectR": "R_004", "EffectG": "G_004", "EffectB": "B_004"},
	"card_005": {"name": "name_005", "def_sym": "R", "EffectR": "R_005", "EffectG": "G_005", "EffectB": "B_005"},
	"card_999": {"name": "name_999", "def_sym": "R", "EffectR": "R_999", "EffectG": "G_999", "EffectB": "B_999"}
	}

var cards_reg_lv1 = {
	"card_000": {"name": "name_000", "def_sym": "R", "EffectR": "R_000", "EffectG": "G_000", "EffectB": "B_000"},
	"card_001": {"name": "name_001", "def_sym": "R", "EffectR": "R_001", "EffectG": "G_001", "EffectB": "B_001"},
	"card_002": {"name": "name_002", "def_sym": "R", "EffectR": "R_002", "EffectG": "G_002", "EffectB": "B_002"}
	}

var rules_reg = {
	"rule_001": {"current_state": "A", "read_symbol": "R", "new_state": "B", "write_symbol": "G", "direction": "Right"},
	"rule_002": {"current_state": "B", "read_symbol": "G", "new_state": "C", "write_symbol": "B", "direction": "Left"},
	"rule_003": {"current_state": "C", "read_symbol": "B", "new_state": "A", "write_symbol": "R", "direction": "Right"},
	"rule_004": {"current_state": "A", "read_symbol": "G", "new_state": "D", "write_symbol": "B", "direction": "Left"},
	"rule_005": {"current_state": "D", "read_symbol": "R", "new_state": "H", "write_symbol": "G", "direction": "Right"}
	}
	
var rules_reg_lv1 = {
	"rule_001": {"current_state": "A", "read_symbol": "R", "new_state": "B", "write_symbol": "G", "direction": "Right"},
	"rule_002": {"current_state": "B", "read_symbol": "G", "new_state": "C", "write_symbol": "B", "direction": "Left"},
	"rule_003": {"current_state": "C", "read_symbol": "B", "new_state": "A", "write_symbol": "R", "direction": "Right"}
	}
	
func add_card(card_id: String):
	if not cards.has(card_id):
		cards.append(card_id)
		emit_signal("cards_updated")
		
func remove_card(card_id: String):
	if cards.has(card_id):
		cards.erase(card_id)
		emit_signal("cards_updated")

func add_rule(rule_id: String):
	if not rules.has(rule_id):
		rules.append(rule_id)
		emit_signal("rules_updated")

func remove_rule(rule_id: String):
	if rules.has(rule_id):
		rules.erase(rule_id)
		emit_signal("rules_updated")
