extends Node

export(bool) var can_toggle_pause: bool = true

func _process(delta):
	if Input.is_action_just_pressed("pause"):
		if !get_tree().paused:
			pause()
			Globals.is_paused = true
		if get_tree().paused:
			resume()
			Globals.is_paused = false
	
	if Globals.is_paused:
		pause()
	if !Globals.is_paused:
		resume()

func pause():
	if can_toggle_pause:
		get_tree().set_deferred("paused", true)

func resume():
	if can_toggle_pause:
		get_tree().set_deferred("paused", false)
