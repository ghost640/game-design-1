extends BaseItem
func _init(): super._init(20) # 1/4 of a heart

func interact(player):
	player.pickup_heartcontainer(value)
	remove()
