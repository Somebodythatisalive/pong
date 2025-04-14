extends CharacterBody2D

var SPEED := 550 

func get_input():
	var input_direction = Input.get_vector("p2.left","p2.right", "p2.up", "p2.down")
	velocity = input_direction * SPEED

func _physics_process(delta):
	get_input()
	move_and_slide()
