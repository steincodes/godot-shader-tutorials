extends ColorRect

var cutoff = 0.0

func _process(delta):
	if (cutoff > 0.0):
		cutoff -= delta * delta * 20
		material.set("shader_param/cutoff", cutoff)



func _on_Button_button_up() -> void:
	cutoff = 1
