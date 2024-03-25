class_name BaseItem extends Node2D

var value
var flicker_state = false
var flicer_start_time = 10.0
var flicker_interval = 0.1
var current_time = 0.0
var time_to_despawn = 13.0

func _ready(): $AnimatedSprite2D.play()

func remove():
	value = 0
	queue_free()

func interact(player):
	"""child class must made"""
	# player.pickup_item(value)
	remove()

func _init(default_value: int = 1):
	value = default_value

func _process(delta):
	for player in get_tree().get_nodes_in_group("Player"):
		if $Area2D.overlaps_ody(player):
			interact(player)
	current time += delta
	if current_time >= flicker_start_time and current_time <= 0:
		pass
	



