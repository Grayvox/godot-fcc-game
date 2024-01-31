extends Area2D

# Disclaimer: This collectible, despite possible similarity, is not associated 
# with the developer's mother, Cherry Magnolia, in any way. Any similarity that
# may be seen is purely coincidental or possibly added for the funnys.
# Also hi mom <3

func _on_body_entered(body):
	if body.name == "Player":
		var mainTween = get_tree().create_tween()
		var invisTween = get_tree().create_tween()
		Game.playerCherries += 1
		mainTween.tween_property(self, "position", position - Vector2(0, 20), 0.3)
		invisTween.tween_property(self, "modulate:a", 0, 0.3)
		mainTween.tween_callback(queue_free)
