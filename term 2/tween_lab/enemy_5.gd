extends Node2D




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	


func _draw():
	# Draw a circle for the enemy's body
	
	draw_circle(Vector2(0,0), 20, Color.PLUM)  
	# Draw a triangle for the enemy's "head"
	#var points = [Vector2(50, 10), Vector2(-20, 10), Vector2(15, 40)]
	#draw_polygon(points, [Color(1, 1, 1)])  # Green triangle
	
var tween: Tween

func _ready():
	tween = create_tween()
	tween.set_loops(0)  # Loop indefinitely



	tween.tween_property(self, "position", position + Vector2(0, -200), 1.0)  # Up
	tween.tween_property(self, "position", position + Vector2(200, 0), 1.0)  # Right
	tween.tween_property(self, "position", position + Vector2(0, 200), 1.0)  # Down
	tween.tween_property(self, "position", position + Vector2(-200, 0), 1.0) #left
	# Square movement pattern
	#tween.tween_property(self, "position", position + Vector2(200, 0), 1.0)  # Right
	#tween.tween_property(self, "position", position + Vector2(0, 200), 1.0)  # Down
	#tween.tween_property(self, "position", position + Vector2(-200, 0), 1.0)  # Left
	#tween.tween_property(self, "position", position + Vector2(0, -200), 1.0)  # Up
