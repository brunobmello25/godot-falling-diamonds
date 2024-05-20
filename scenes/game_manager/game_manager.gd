extends Node2D


var player_score: int = 0

signal increased_player_score

func _ready():
	pass


func _process(delta):
	pass


func increment_score() -> void:
	player_score += 1
	increased_player_score.emit()


func game_over() -> void:
	get_tree().paused = true
