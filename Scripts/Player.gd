extends KinematicBody2D

const GRAVITY: float = 300.0
const SPEED: float = 75.0
const JUMP_FORCE: float = 150.0

var motion: Vector2 = Vector2.ZERO
var prev_grounded: bool = false
var bullet

onready var sprite: Sprite = $Sprite


func _physics_process(delta) -> void:
	
	prev_grounded = is_on_floor()
	
	motion.y += delta * GRAVITY
	motion.x = (Input.get_action_strength("walk_right") - Input.get_action_strength("walk_left")) * SPEED
	motion = move_and_slide(motion, Vector2.UP)
	
	if Input.is_action_pressed("walk_left"):
		sprite.flip_h = true
	elif Input.is_action_pressed("walk_right"):
		sprite.flip_h = false
	
	if is_on_floor():
		if Input.is_action_just_pressed("jump"):
			motion.y = -JUMP_FORCE
	

