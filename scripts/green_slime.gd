extends Node2D

const SPEED = 40

var direction = 1

@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft
@onready var animated_sprite = $AnimatedSprite2D
#@onready var ray_cast_down_right = $RayCastDownRight
#@onready var ray_cast_down_left = $RayCastDownLeft

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	if ray_cast_left.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
	#if ray_cast_down_left.is_colliding():
		#direction = 1
		#animated_sprite.flip_h = false
	#if ray_cast_down_right.is_colliding():
		#direction = -1
		#animated_sprite.flip_h = true
	
	
	position.x += direction * SPEED * delta
