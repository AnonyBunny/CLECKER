extends Node2D

export var points = 0
var areastate = false

func _process(_delta):
	if not areastate:
		return
	if Input.is_action_just_pressed("click"):  
		points += 1
	$Label.text = str(points)

#todo add a store
#todo save system
#todo automated clicking

func _on_Area2D_mouse_entered():
	areastate = true

func _on_Area2D_mouse_exited():
	areastate = false
