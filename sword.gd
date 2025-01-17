extends Area2D

var damage = 25
var knockback = 128
var anim_live = 0.2


func _process(delta: float) -> void:
	anim_live -= delta
	if anim_live <= 0:
		queue_free()
		return
	
	for enemy in get_tree().get_nodes_in_group("enemy"):
		if self.overlaps_body(enemy):
			enemy.take_damage(damage, self)
			var dist = (enemy.global_position-self.global_position)
			enemy.inertia = dist.normalized() * knockback
	
	pass
