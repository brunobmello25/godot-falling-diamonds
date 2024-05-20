extends Node2D


var player_score: int = 0


signal increased_player_score
signal player_died

func _ready():
	process_mode = Node.PROCESS_MODE_ALWAYS


func _process(delta):
	restart_game()


func increment_score() -> void:
	player_score += 1
	increased_player_score.emit()


func defeat_player() -> void:
	get_tree().paused = true
	player_died.emit()


func restart_game() -> void:
	if Input.is_action_just_pressed("restart"):
		get_tree().reload_current_scene()
		get_tree().paused = false
		player_score = 0
