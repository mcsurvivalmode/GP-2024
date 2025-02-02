extends Node2D


func _process(delta: float ) -> void:
	pass
	
func _draw() -> void:
	var r = Rect2(10,10,100,30)
	draw_rect(r, Color.PALE_VIOLET_RED, false, 10)
	
	draw_line(Vector2(50,50), Vector2(200,200), Color.PLUM)
	
	draw_circle(Vector2(500,500), 100, Color.LIGHT_BLUE)
	
	#procetraleeee 
	var v = get_viewport_rect()
	#draw_line(Vector2(0, v.size.y), Vector2(v.size.x,0), Color.LIGHT_GREEN)
	var numLine = 5
	var s = get_viewport_rect().size
	var w = s.x /numLine
	
	for i in range(numLine):
		draw_line(Vector2(i * w, 0), Vector2(i * w, s.y), Color.LIGHT_GREEN)
		print(i)
		
		
	for i in range(10,-1,-1):
		print(i)
		
	var basket = ["apple", "banana", "carrot"]
	
	for f in basket:
		print(f)
		
	for i in range(basket.size()):
		print(basket[i])
		
	var num_h_lines = 5
	var gap = 50
	var top = 100
	for i in range(5):
		draw_line(Vector2(top, top + gap * i), Vector2(v.size.x - top, top + gap * i), Color.PINK)
	
	var e = 100
	var b = 10
	
	for i in range(6):
		draw_line(Vector2(e + b * i , v.size.y), Vector2(v.size.x,e - e * i), Color.LIGHT_GREEN)
	
	
	pass
