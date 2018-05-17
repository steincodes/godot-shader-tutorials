extends Node

func _ready():
	$tween.interpolate_property($"effect", "cutoff", 0.0, 1.0, 2.0, Tween.TRANS_QUINT, Tween.EASE_IN_OUT)
	$tween.start()