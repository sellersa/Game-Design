extends TileMap

var startingpoint = self.position
var s = true

func _process(_delta):
	if s == true and self.position <= startingpoint + Vector2(40, 0):
		self.position += Vector2(0.25, 0)
	elif s == false and self.position >= startingpoint:
		self.position -= Vector2(0.25, 0)
	else:
		s = not s
