extends CharacterBody2D
var begin = true
var beginSPEED :=5
const SPEED := 9.5
const DMG := 10
func _ready() -> void:
	velocity = Vector2(-beginSPEED, 0)
	
func _physics_process(delta: float) -> void:
	var col: KinematicCollision2D= move_and_collide(velocity)
	if col:
		if begin:
			velocity = Vector2(-SPEED, randf_range(-9,9))
			print(velocity)
			begin = false
		var normal := col.get_normal()
		velocity= velocity.bounce(normal)
		
		print ("bounce")
