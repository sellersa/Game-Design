extends CharacterBody2D


const SPEED = 30
const JUMP_VELOCITY = -55.5
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var variblethatmakesgravityhappen = 0.05
var amountofjumps = 0
var extrajumps = 0

func pick_it_up():
	amountofjumps += 1

func _physics_process(delta):
	if not is_on_floor():
		velocity.y += (gravity * variblethatmakesgravityhappen) * delta # Grav
	var direction = Input.get_axis("ui_left", "ui_right") # moving
	update_animation(direction)
	move_and_slide()

func update_animation(direction):
	if not is_on_floor() and direction != 0:
		$AnimatedSprite2D.play("jump")
	elif not is_on_floor():
		$AnimatedSprite2D.play("jump")
	else:
		$AnimatedSprite2D.play("idle")


