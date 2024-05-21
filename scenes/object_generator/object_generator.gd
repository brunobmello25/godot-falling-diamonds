extends Node2D


@export var objects_to_generate: Array[PackedScene]

@onready var spots_to_place: Array[Marker2D] = [
	$SpawnPoints/Position1,
	$SpawnPoints/Position2,
	$SpawnPoints/Position3,
	$SpawnPoints/Position4,
	$SpawnPoints/Position5,
	$SpawnPoints/Position6
]

@onready var timer: Timer = $Timer
@onready var generated_objects: Node2D = $GeneratedObjects


func _ready():
	timer.start()


func _process(_delta):
	pass


func _on_timer_timeout():
	spawn_new_object()


func spawn_new_object():
	var object = objects_to_generate.pick_random().instantiate()
	var place = spots_to_place.pick_random()
	
	object.position = place.position
	
	generated_objects.add_child(object)
