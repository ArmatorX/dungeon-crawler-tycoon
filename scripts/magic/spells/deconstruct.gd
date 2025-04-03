class_name DeconstructSpell
extends Spell

@onready var tile_map_layer: LayoutMap = get_node("/root/Main/TilemapLayers/LayoutMap")

func cast(target=null) -> bool:
	var cell_type := _get_target_cell_type(target)
	
	if cell_type != Enums.TileType.EMPTY:
		#var cells = []
		#for c in cells:
			#if tile_map_layer.get_cell_type_from_position(c) == Enums.TileType.WALL:
				#var should_remove_tile = true
				#for adyacent_cell in tile_map_layer.get_adyacent_cells_from_position(c):
					#if adyacent_cell != c && tile_map_layer.get_cell_type_from_position(adyacent_cell) == Enums.TileType.FLOOR:
						#should_remove_tile = false
						#break
				#
				#if should_remove_tile:
					#cells.append(c)
		
		var cell := _get_position_from_target(target)
		tile_map_layer.set_cells_terrain_connect([cell], 0, -1, false)
		return true
	else:
		return false

func _get_target_cell_type(target=null) -> Enums.TileType:
	if target == null:
		return tile_map_layer.get_cell_type_from_marker()
		
	return tile_map_layer.get_cell_type_from_position(target)

func _get_position_from_target(target=null) -> Vector2i:
	if target == null:
		return tile_map_layer.get_coords_from_marker()
	
	return target 
