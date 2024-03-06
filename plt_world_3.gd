extends Node2D

func _on_killer_body_entered(body):
	if body.name == "plt_player":
		body.queue_free()
		OS.alert("You died!")
		get_tree().reload_current_scene()
