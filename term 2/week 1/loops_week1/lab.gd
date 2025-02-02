extends Node2D


func _ready() -> void: #part 1 
 
	for i in range(10,-1,-1):
		print(i)
	
	var num = 5
	
	while num > 0: # part 2 
		print(num)
		num = num -1 
		
	for x in range(3):
		for y in range(3):
			print("(%d, %d)" % [x, y])
			
			
pass
