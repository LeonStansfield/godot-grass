extends MeshInstance

export var character_path := NodePath()

onready var _character: Spatial = get_node(character_path)

func _process(_delta: float) -> void:
	material_override.set_shader_param(
		"character_position", _character.global_transform.origin
	)
