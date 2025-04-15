extends Area2D
var dmgisreal = false
var health = 1000
var death = preload("res://tscn files/p2 win.tscn")
@onready var progress_bar: TextureProgressBar =$"p1 hp bar"
@onready var basicball: CharacterBody2D =$"../BALL"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	progress_bar.value = health
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if dmgisreal == true:
		health -=basicball.DMG
		progress_bar.value = health
		print(health)
		if health <= 0:
			print("p2")
			get_tree().change_scene_to_file("res://tscn files/p2 win.tscn")


func _on_body_entered(body: Node2D) -> void:
	dmgisreal=true# Replace with function body.
	


func _on_body_exited(body: Node2D) -> void:
	dmgisreal=false # Replace with function body.
	
