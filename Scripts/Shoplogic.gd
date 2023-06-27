extends Node

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
	shopitemmaker("grandpa", 20, 1, 15)

func _on_grandpabuy_down():
	if $"../..".points < ShopItems[0].cost:
		return
	$"../..".points -= ShopItems[0].cost
	$"..".addcps(ShopItems[0].cps)
	ShopItems[0].cost += ShopItems[0].piss
