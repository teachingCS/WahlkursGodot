extends CharacterBody2D


const SPEED = 500.0
const JUMP_VELOCITY = -750.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	# Animation
	if not is_on_floor():
		$AnimatedSprite2D.play("jump")
		if direction == 1:
			$AnimatedSprite2D.flip_h = false
		if direction == -1:
			$AnimatedSprite2D.flip_h = true
	else:
		if direction == 1:
			$AnimatedSprite2D.flip_h = false
			$AnimatedSprite2D.play("walk")
		elif direction == -1:
			$AnimatedSprite2D.flip_h = true
			$AnimatedSprite2D.play("walk")
		elif direction == 0:
			$AnimatedSprite2D.play("idle")

	move_and_slide()
