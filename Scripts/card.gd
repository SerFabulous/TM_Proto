extends Button

var card_id: String

func setup(data: Dictionary, id: String):
	card_id = id
	$SymbolState.text = data.def_sym
	$name.text = data.name
	$def_sym.text = data.def_sym
	$EffectR.text = data.EffectR
	$EffectG.text = data.EffectG
	$EffectB.text = data.EffectB

func _pressed():
	if PlayerData.cards.has(card_id):
		PlayerData.remove_card(card_id)
	else:
		PlayerData.add_card(card_id)
