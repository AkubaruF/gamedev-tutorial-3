extends CharacterBody2D

@export var gravity = 200.0
@export var walk_speed = 200
@export var jump_speed = -300
@export var max_air_jump = 1
var remaining_jump = max_air_jump
@onready var sprite: Sprite2D = $Sprite2D

func _physics_process(delta):
	velocity.y += delta * gravity

	if is_on_floor() and Input.is_action_just_pressed('ui_up'):
		velocity.y = jump_speed
		
	if remaining_jump > 0 and !is_on_floor() and Input.is_action_just_pressed('ui_up'):
		remaining_jump -= 1
		velocity.y = jump_speed
	
	if is_on_floor():
		remaining_jump = max_air_jump

	if Input.is_action_pressed("ui_left"):
		sprite.flip_h = true
		velocity.x = -walk_speed
	elif Input.is_action_pressed("ui_right"):
		sprite.flip_h = false
		velocity.x =  walk_speed
	else:
		velocity.x = 0

	# "move_and_slide" already takes delta time into account.
	move_and_slide()
