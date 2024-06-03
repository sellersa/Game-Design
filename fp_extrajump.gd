extends Node2D


func _on_area_2d_body_entered(_body):
	for player in get_tree().get_nodes_in_group("Player"):
		player.pick_it_up()
		queue_free()
