extends Node2D

var phys_ball = preload("res://phys_ball.tscn")

func _ready() -> void:
	$Panel/GravSlider.value = $phys_ball.gravity_scale

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed:
		var nball = phys_ball.instantiate()
		nball.position = event.position
		nball.gravity_scale = $Panel/GravSlider.value
		nball.inertia = float($Panel/txtInsertia.text)
		nball.linear_velocity = Vector2(float($Panel/txtVelX.text), float($Panel/txtVelY.text))
		add_child(nball)

func _on_grav_slider_value_changed(value: float) -> void:
	for child in get_children():
		if child is RigidBody2D:
			child.gravity_scale = value


func _on_btn_force_pressed() -> void:
	for child in get_children():
		if child is RigidBody2D:
			var force = randi_range(50, 1000)
			child.apply_central_impulse(Vector2(1, 0) * force)
			#  Vector2.RIGHT


func _on_btn_adjust_pressed() -> void:
	var insertia = float($Panel/txtInsertia.text)
	var v_x = float($Panel/txtVelX.text)
	var v_y = float($Panel/txtVelY.text)
	var velocity = Vector2(v_x, v_y)
	var time = float($Panel/txtTime.text)
	var Acceleration = velocity / time
	for child in get_children():
		if child is RigidBody2D:
			child.inertia = insertia
			child.linear_velocity = velocity
			child.add_constant_force(Acceleration) 
