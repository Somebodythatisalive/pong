extends Node2D

var landmine =preload("res://tscn files/landmine.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _on_pressed() -> void:
	randomize()
	var boom = landmine.instantiate()
	boom.position = Vector2(randf_range(575,1150), randf_range(0,640))
	add_child(boom)
	
