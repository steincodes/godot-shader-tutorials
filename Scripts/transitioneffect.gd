extends ColorRect

var cutoff = 0.0

func _process(delta):
	material.set("shader_param/cutoff", cutoff)