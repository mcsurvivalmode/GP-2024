extends Node2D
var radius:float 
var count:int
var color_hue_start
var middle:float
	
	
	
	
	
func reset() -> void:
	queue_redraw()
	color_hue_start = 0


func _draw() -> void:
	var l = float(count)
	#for i in range(l):
		#draw_line(Vector2(i * 100, 0), Vector2(i * 100, 500), Color.AQUAMARINE, 20)
		
	var theta_inc = 1 #gap between the number of segments 
	var px = 0 
	var py = 0  
	var r = 0 
	var color_hue = color_hue_start 
	var alpha = $"../ColorPickerButton".color.a
	

	
	for i in range(l): #creates the cirlces by calculating the spaceee
		var theta = theta_inc * i 
		var x = sin(theta) * r
		var y = cos(theta) * r
		var c:Color = Color.from_hsv(color_hue, 1, 1, alpha)
		draw_line(Vector2(px, py), Vector2(x,y), c, 10)
		#draw_circle(Vector2(x,y), radius, Color.PINK, false)
		px = x
		py = y
		r = r + radius
	
	#var c_2:Color = Color.from_hsv(color_hue_2, 1, 1, alpha_2 )
	draw_circle(Vector2(0,0), radius, Color.PINK, true)
	

	pass
	

	



func _on_num_lines_value_changed(value: float) -> void:
	count = value 
	pass # Replace with function body.


func _on_radius_value_changed(value: float) -> void:
	radius = value
	pass # Replace with function body.


func _on_color_picker_button_color_changed(color: Color) -> void:
	color_hue_start = color.h
	pass # Replace with function body.


func _on_middle_value_changed(value: float) -> void:
	middle = value
	pass # Replace with function body.
