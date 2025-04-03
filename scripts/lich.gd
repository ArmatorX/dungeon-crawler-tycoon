@icon("res://dev/godot-icons/node_2D/icon_character.png")
class_name Lich
extends Node2D

@export var magic: Magic

func cast_spell_by_name(spell_name: StringName, target=null) -> void:
	magic.cast_spell_by_name(spell_name, target)
