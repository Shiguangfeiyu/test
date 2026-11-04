extends Node

var score = 0
@onready var label_2: Label = $Label

func add_point():
	score += 1
	label_2.text = "你获得了" + str(score) + "枚金币！"
