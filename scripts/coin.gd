extends Area2D
@onready var game_manager: Node = %GameManager
@onready var animation_player: AnimationPlayer = $AnimationPlayer


func _on_body_entered(body: Node2D) -> void:
	game_manager.add_point()
	$AnimationPlayer.play("pickup")


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == "pickup":
		queue_free()
