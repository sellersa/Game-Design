extends RigidBody2D





func _on_area_2d_area_entered(area):
	print("2")
	if area.name == "plt_player":
		area.queue_free()
		OS.alert("You died!")
		get_tree().reload_current_scene()
