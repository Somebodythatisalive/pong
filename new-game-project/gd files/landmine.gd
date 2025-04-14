extends AnimatedSprite2D
@onready var progress_bar: Area2D =$"../that means!"
@onready var player_2: CharacterBody2D=$"../What are we getting"
@onready var timer: Timer =$Timer
@onready var blasttimer: Timer =$BlastTimer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	

func _on_area_2d_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
	progress_bar.health -= 100
	progress_bar.progress_bar.value = progress_bar.health
	player_2.SPEED = 0
	timer.start()


func _on_timer_timeout() -> void:
	if blasttimer:
		
		player_2.SPEED =550
		queue_free()
	
