extends Node

var current_scene: Node = null
var player_deck: Array = []

func _ready():
	load_scene("res://Scenes/main_menu.tscn")

func load_scene(scene_path: String):
	if current_scene:
		current_scene.queue_free()
	var scene = load(scene_path).instantiate()
	add_child(scene)
	current_scene = scene
