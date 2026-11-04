extends AnimatedSprite2D

const Speed = 60
var dierection = 1
@onready var ray_cast_right_2d: RayCast2D = $"../RayCastRight2D"
@onready var ray_cast_left_2d: RayCast2D = $"../RayCastLeft2D"
@onready var animated_sprite: AnimatedSprite2D = $"."

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if ray_cast_left_2d.is_colliding():
		dierection = 1
		animated_sprite.flip_h = false
		
	if ray_cast_right_2d.is_colliding():
		dierection = -1
		animated_sprite.flip_h = true
		
	position.x += dierection * Speed * delta
