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
		velocity.y += (gravity * variblethatmakesgravityhappen) * delta # Gravity
	if Input.is_action_just_pressed("ui_accept") and is_on_floor(): # Jump
		velocity.y = JUMP_VELOCITY
		extrajumps = amountofjumps
	if Input.is_action_just_pressed("ui_accept") and not is_on_floor() and extrajumps > 0:
		velocity.y = JUMP_VELOCITY
		extrajumps -= 1
	var direction = Input.get_axis("ui_left", "ui_right") # moving
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	update_animation(direction)
	move_and_slide()

func update_animation(direction):
	if not is_on_floor() and direction != 0:
		$AnimatedSprite2D.play("jump")
		$AnimatedSprite2D.flip_h = direction < 0
	elif not is_on_floor():
		$AnimatedSprite2D.play("jump")
	elif direction != 0:
		$AnimatedSprite2D.play("walk")
		$AnimatedSprite2D.flip_h = direction < 0
	else:
		$AnimatedSprite2D.play("idle")


