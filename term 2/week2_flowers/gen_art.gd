extends Node2D
var radius:float 
var count:int
	
func _draw() ->void:
	var l:float = $"../num_lines".value
	for i in range(l):
		draw_line(Vector2(i * 100, 0), Vector2(i * 100, 500), Color.AQUAMARINE, 20)
		
	var theta_inc = PI * 2.0 / l #gap between the number of segments 
	
	for i in range(l): #creates the cirlces by calculating the spaceee
		var theta = theta_inc * i 
		var x = sin(theta) * radius
		var y = cos(theta) * radius
		draw_circle(Vector2(x,y), radius, Color.PINK, false)
	
	
	pass
	
func _process(delta: float) -> void:
	queue_redraw()


func _on_num_lines_value_changed(value: float) -> void:
	count = value 
	pass # Replace with function body.


func _on_radius_value_changed(value: float) -> void:
	radius = value
	pass # Replace with function body.
