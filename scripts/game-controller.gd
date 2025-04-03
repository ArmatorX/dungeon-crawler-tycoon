@icon("res://dev/godot-icons/node_2D/icon_gear.png")
class_name GameController
extends Node2D

@onready var lich :=  $"../Lich"

func _process(_delta: float) -> void:
	if Input.is_action_pressed("construct"):
		lich.cast_spell_by_name('ConstructSpell')
	if Input.is_action_pressed("deconstruct"):
		lich.cast_spell_by_name('DeconstructSpell')
