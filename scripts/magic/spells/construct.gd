class_name ConstructSpell
extends Spell

@onready var tile_map_layer: LayoutMap = get_node("/root/Main/TilemapLayers/LayoutMap")

func cast(target=null) -> bool:
	var cell_type := _get_target_cell_type(target)
	
	if cell_type != Enums.TileType.WALL:
		return false
	
	var cells := _get_adyacent_cells(target)
	tile_map_layer.set_cells_terrain_connect(cells, 0, 0, false)
	return true

func _get_target_cell_type(target=null) -> Enums.TileType:
	if target == null:
		return tile_map_layer.get_cell_type_from_marker()
		
	return tile_map_layer.get_cell_type_from_position(target)

func _get_adyacent_cells(target=null) -> Array[Vector2i]:
	if target == null:
		return tile_map_layer.get_adyacent_cells_from_marker()
	
	return tile_map_layer.get_adyacent_cells(target)
