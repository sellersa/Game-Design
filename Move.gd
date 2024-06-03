extends Area2D

@export var thisnumbers = Vector2()

func change_spawnpoint(hsfsd):
	thisnumbers = hsfsd

func _on_body_entered(body):
	if body.is_in_group("Player"):
		$"../fp_player2".position = thisnumbers
