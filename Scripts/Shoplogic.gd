extends Node

export (PackedScene) var button

class Item:
	var title
	var cost
	var cps
	var piss
	
var ShopItems = []

func shopitemmaker(title, dope, pope, cope):
	var toAdd = Item.new()
	toAdd.title = title
	toAdd.cost = dope
	toAdd.cps = pope
	toAdd.piss = cope
	ShopItems.append(toAdd)

func _ready():
	shopitemmaker("cursor", 5, 0.1, 2)
	shopitemmaker("grandpa", 20, 1, 15)
	
	for item in ShopItems:
		var buybuttoninstance = button.instance()
		$"../ScrollContainer/VBoxContainer".add_child(buybuttoninstance)
		buybuttoninstance.text = "buy " + item.title
		buybuttoninstance.name = item.title
		
func buy():
	
	
	pass
	
func _on_grandpabuy_down():
	if $"../..".points < ShopItems[1].cost:
		return
	$"../..".points -= ShopItems[1].cost
	$"..".addcps(ShopItems[1].cps)
	ShopItems[1].cost += ShopItems[1].piss
