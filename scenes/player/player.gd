extends CharacterBody2D


var speed: float = 400
@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D


func _ready() -> void:
	pass


func _process(delta) -> void:
	move()


func move() -> void:
	if Input.is_action_pressed("move_right"):
		velocity.x = speed
		sprite.set_flip_h(false)
		sprite.play("walking")
	elif Input.is_action_pressed("move_left"):
		velocity.x = -speed
		sprite.play("walking")
		sprite.set_flip_h(true)
	else:
		velocity.x = 0
		sprite.play("idle")

	move_and_slide()
