extends Node

var wins = 0

var playerHealth = 10
var playerGold = 0
var playerCherries = 0

func resetGame():
	playerHealth = 10
	playerGold = 0
	playerCherries = 0
	Utils.saveGame()
