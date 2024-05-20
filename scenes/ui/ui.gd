extends CanvasLayer


@onready var score_text: Label = $ScorePanel/MarginContainer/ScoreText


func _ready():
	GameManager.increased_player_score.connect(update_score_text)


func update_score_text() -> void:
	score_text.text = str(GameManager.player_score)
