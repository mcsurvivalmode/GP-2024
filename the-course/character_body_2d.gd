extends CharacterBody2D

@onready var laser:Node2D=$"../laser"

const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta


	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	
func _ready():
	laser.visible = false

func _process(delta):
	if Input.is_action_pressed("fire"):
		
		
		var p = Vector2.ZERO
		laser.set_point_position(0, p)

		var p1 = Vector2.UP * 500
		laser.set_point_position(1, p1)
		$"../laser/laser_area".monitoring = true
		laser.visible = true						
	else:
		$"../laser/laser_area".monitoring = false
		laser.visible = false
		
