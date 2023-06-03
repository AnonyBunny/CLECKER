extends Node2D

var points = 0


func _process(_delta):
	if Input.is_action_just_pressed("click"):  
		points += 1
		print(points)

#this is bad dumb code, it doesn't account for if the button is actually being clicked
#todo: check area
#also todo: get an actual counter system visible instead of using debugger
#probably need a new scene for that
