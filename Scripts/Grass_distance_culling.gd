extends Spatial

var grass = []
var current_grass

var first_frame = true

export (int) var grass_cull_distance = 50

# Called when the node enters the scene tree for the first time.
func _ready():
	for _i in self.get_children ():
		grass.append(_i)
		print (_i)

func _on_Grass_update_timer_timeout():
	for a in grass:
		var distance_to_grass = Globals.player.global_transform.origin.distance_to(a.global_transform.origin)
		if distance_to_grass> grass_cull_distance:
			a.visible = false
		else:
			a.visible = true
