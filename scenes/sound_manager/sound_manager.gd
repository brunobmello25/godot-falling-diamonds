extends Node2D


@onready var diamond: AudioStreamPlayer = $Diamond
@onready var game_over: AudioStreamPlayer = $GameOver
@onready var background_music: AudioStreamPlayer = $BackgroundMusic


func _ready():
	play_background()


func play_diamond() -> void:
	diamond.play()


func play_game_over() -> void:
	background_music.stop()
	game_over.play()


func play_background() -> void:
	background_music.play()
