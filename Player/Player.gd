extends KinematicBody20

var velocity2.ZERO

Var rotation_speed = 5.0
Var speed = 0.1
Var max_speed = 500



func _ready():
	pass

func _physics_process(delta):
	postion = position + velocity
	velocity = velocity.normalized() * clamp(velocity.length, 0, max_speed)

	if Input.is_action_pressed("foward") 
		velocity = velocity + Vector2(0,-speed).rotated(rotation)
	if Input.is_action_pressed("left"):
		rotation_degrees = rotation_degrees - rotation_speed
	if Input.is_action_pressed("right"):
		rotation_degrees = rotation_degrees + rotation_speed

position.x = wrapf(position.x, 0, 1024)
position.x = wrapf(position.x, 0, 600)
