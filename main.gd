extends Node2D

func _ready():
	# Warning: Only uncomment the below line when absolutely neccessary
	# Utils.saveGame()
	Utils.loadGame()

func _on_quit_button_pressed():
	get_tree().quit()

func _on_play_button_pressed():
	get_tree().change_scene_to_file("res://world.tscn")
