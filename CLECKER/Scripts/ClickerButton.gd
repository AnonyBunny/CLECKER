extends Node2D

export var points = 0
var areastate = false

func _process(_delta):
	if not areastate:
		return
	if Input.is_action_just_pressed("click"):  
		points += 1
		print(points)

#todo add a store, add a point counter
#this was way easier than I expected tbh

func _on_Area2D_mouse_entered():
	areastate = true

func _on_Area2D_mouse_exited():
	areastate = false
