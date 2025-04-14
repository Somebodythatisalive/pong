extends Area2D
var dmgisrealp2 = false
var health = 1000
var death = preload("res://tscn files/p1 win.tscn")
@onready var progress_bar: TextureProgressBar = $"TextureProgressBar"
@onready var basicball: CharacterBody2D =$"../BALL"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	progress_bar.value = health
	dmgisrealp2 = false
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if dmgisrealp2 == true:
		health -=basicball.DMG
		progress_bar.value = health
		print(health)
		if health <= 0:
			print("p1")
			get_tree().change_scene_to_file("res://tscn files/p1 win.tscn")

func _on_body_entered(body: Node2D) -> void:
	dmgisrealp2=true# Replace with function body.
	


func _on_body_exited(body: Node2D) -> void:
	dmgisrealp2=false # Replace with function body.
	
