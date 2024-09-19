extends Area2D

var tween: Tween = null
var wind_push_amount: float = 300.0

func set_wind_push(push: float, duration: float, body: Node2D) -> void:
	if tween:
		tween.kill()
	tween = get_tree().create_tween()
	tween.tween_property(body, "wind_push", push, duration)

func _on_body_entered(body: Node2D) -> void:
	set_wind_push(wind_push_amount, 3.0, body)
	print("Entered: Wind Push Increase")

func _on_body_exited(body: Node2D) -> void:
	set_wind_push(0.0, 1.0, body)
	print("Exited: Wind Push Reset")
