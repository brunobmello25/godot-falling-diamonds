extends Node2D


var player_score: int = 0


signal increased_player_score
signal player_died

func _ready():
	process_mode = Node.PROCESS_MODE_ALWAYS


func _process(_delta):
	restart_game()
	exit()


func increment_score() -> void:
	player_score += 1
	increased_player_score.emit()


func defeat_player() -> void:
	get_tree().paused = true
	player_died.emit()
	SoundManager.play_game_over()


func restart_game() -> void:
	if Input.is_action_just_pressed("restart"):
		get_tree().reload_current_scene()
		get_tree().paused = false
		player_score = 0
		SoundManager.play_background()


func exit() -> void:
	if Input.is_action_just_pressed("exit"):
		get_tree().quit()
