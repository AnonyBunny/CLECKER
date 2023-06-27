extends Node2D

export var points = 0
var areastate = false

func _process(_delta):
	$Label.text = str(points)
	
	if areastate and Input.is_action_just_pressed("click"):  
		points += 1

#todo save system

func _on_Area2D_mouse_entered():
	areastate = true

func _on_Area2D_mouse_exited():
	areastate = false
