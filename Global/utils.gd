extends Node

const SAVE_PATH = "user://savegame.bin"

func saveGame():
	var file = FileAccess.open(SAVE_PATH, FileAccess.WRITE)
	var saveData: Dictionary = {
		"playerHealth": Game.playerHealth,
		"playerGold": Game.playerGold,
		"playerCherries": Game.playerCherries
	}
	var json = JSON.stringify(saveData)
	file.store_line(json)
	
func loadGame():
	var file = FileAccess.open(SAVE_PATH, FileAccess.READ)
	if FileAccess.file_exists(SAVE_PATH):
		if not file.eof_reached():
			var current_line = JSON.parse_string(file.get_line())
			if current_line:
				Game.playerHealth = current_line["playerHealth"]
				Game.playerGold = current_line["playerGold"]
				Game.playerCherries = current_line["playerCherries"]
