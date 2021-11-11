extends TileMap

export(Texture) var map: Texture
export(PoolColorArray) var colors

var count:Vector2 = Vector2(70,40)


# Called when the node enters the scene tree for the first time.
func _ready():
	for x in map.get_width():
		for y in map.get_height():
			GenerateTile(x,y)

func GenerateTile(x:int, y:int):
	var data = map.get_data()
	data.lock()
	var pixelColor = data.get_pixel(x,y)
	
	if pixelColor.a == 0:
		return
	
	for item in colors.size():
		if colors[item].to_html(false) == pixelColor.to_html(false):
			set_cell(x,y, item)
			update_bitmask_region(Vector2.ZERO, Vector2.ZERO)
		pass
	pass
