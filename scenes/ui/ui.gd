extends CanvasLayer


@onready var score_text: Label = $ScorePanel/MarginContainer/ScoreText
@onready var game_over_panel: Control = $GameOverPanel


func _ready():
	GameManager.increased_player_score.connect(update_score_text)
	GameManager.player_died.connect(display_game_over)

	game_over_panel.visible = false


func update_score_text() -> void:
	score_text.text = str(GameManager.player_score)


func display_game_over() -> void:
	game_over_panel.visible = true
