extends TileMap

var counter = 0
var thaw = 0
var freeze = false

func _process(_delta):
			self.position += Vector2(0, 0.125)
			counter += 1
			if counter >= 1600:
				self.position = Vector2(0, 200)
				counter = 0
				freeze = false
"""		else:
			thaw += 1
			if thaw >= 800:
				freeze = true
				thaw = 0"""
