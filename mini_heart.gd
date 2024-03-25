extends BaseItem

func _init(): super._init(5)
func _ready(): super._read()

func interact(player):
	player.pickup_health(value)
	remove()
