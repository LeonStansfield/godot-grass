extends Control

func _process(delta):
	if Globals.is_paused:
		visible = true
	if !Globals.is_paused:
		visible = false


func quit():
	get_tree().quit()

func resume():
	Globals.is_paused = false


func _on_Resume_pressed():
	resume()

func _on_Quit_pressed():
	quit()
