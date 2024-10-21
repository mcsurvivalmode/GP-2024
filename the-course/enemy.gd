extends Sprite2D

@export var player:Node2D #enemy knows about player 
@export var speed = 100

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	var two_player = player.global_position - global_position 
	two_player = two_player.normalized() 
	global_position = global_position +(two_player * speed * delta)
	pass
