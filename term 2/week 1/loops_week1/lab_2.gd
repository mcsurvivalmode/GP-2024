extends Node2D
func _draw() -> void:
	var v = get_viewport_rect()
	#draw_line(Vector2(0, v.size.y), Vector2(v.size.x,0), Color.LIGHT_GREEN)
	var numLine = 5
	var s = get_viewport_rect().size
	var w = s.x /numLine
	
	for i in range(numLine): #vertical lines
		draw_line(Vector2(i * w, 0), Vector2(i * w, s.y), Color.LIGHT_GREEN)
		print(i)
		
	var num_h_lines = 5
	var h = s.y /num_h_lines
	
	
	for i in range(5): #horizontal lines 
		draw_line(Vector2(0, i * h), Vector2(s.x, i * h), Color.PINK)
