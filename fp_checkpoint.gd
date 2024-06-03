extends Sprite2D

var checkpointcoords


func _process(_delta):
	pass


func _on_area_2d_body_entered(_body):
	checkpointcoords = self.position
	for num in get_tree().get_nodes_in_group("Spawn"):
		num.change_spawnpoint(checkpointcoords)
		queue_free()
		
