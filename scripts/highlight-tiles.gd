extends TileMapLayer

@onready var marker: Node2D = get_node("../Marker") # Child Node2D

func _process(_delta: float):
	var mouse_pos = get_local_mouse_position()
	var cell_pos = local_to_map(mouse_pos)
	highlight_cell(cell_pos)

func highlight_cell(cell_position: Vector2i):
	marker.position = map_to_local(cell_position)
