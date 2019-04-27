extends Node

export(Color) var clearColor = Color()
export(Color) var transitionColor = Color()

func _ready() -> void:
	VisualServer.set_default_clear_color(clearColor)
	$ScreenShader.material.set("shader_param/color", transitionColor)