extends Node

var cookiespersecond = 0
var secondspercookie = INF

func _ready():
	if cookiespersecond != 0:
		secondspercookie = (1.0/cookiespersecond)
	$"Timer".wait_time = secondspercookie
	$"Timer".start()

func addcps(value):
	cookiespersecond += value
	secondspercookie = (1.0/cookiespersecond)
	$"Timer".wait_time = secondspercookie
	$"Timer".start()
	$"../Label2".text = "cps: " + str(cookiespersecond)

func _on_Timer_timeout():
	$"../".points += 1
