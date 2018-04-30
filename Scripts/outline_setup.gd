extends Sprite

func _ready():
	var size = texture.get_data().get_size()
	print(size)
	self.material.set_shader_param("sizex", size.x)
	self.material.set_shader_param("sizey", size.y)

