extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass




func _draw():
	var center = get_viewport_rect().size / 2
	var angle = 0
	var radius = 10
	var angle_step = 1 
	var radius_step = 5

	for i in range(150):
		var x = center.x + radius * cos(angle)
		var y = center.y + radius * sin(angle)
		draw_circle(Vector2(x, y), 2, Color.PINK)
		angle += angle_step
		radius += radius_step
		
	 
	var screen_width = get_viewport_rect().size.x
	var spacing = screen_width / 10
	var radius_2 = 10
	
	for i in range(10):
		var x = i * spacing + radius_2
		var y = get_viewport_rect().size.y / 2
		draw_circle(Vector2(x, y), radius_2, Color.WHITE)
		radius_2 += 5
