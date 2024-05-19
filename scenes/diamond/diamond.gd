extends Area2D

@export var speed: float = 400
@onready var destruction_timer: Timer = $DestructionTimer


func _read():
	destruction_timer.start()


func _process(delta) -> void:
	position.y += speed * delta


func _on_body_entered(body):
	if body.is_in_group("player"):
		queue_free()


func _on_destruction_timer_timeout():
	queue_free()
