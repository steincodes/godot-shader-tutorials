extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	self.material.set("shader_param/color", Color(0.5,0.5,1.0,1.0))
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
