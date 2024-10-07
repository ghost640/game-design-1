extends RigidBody2D

var speed = 100
var direction = -1

func _ready() -> void:
	$Timer.start()

func _physics_process(delta: float) -> void:
	self.linear_velocity.x = speed * direction

func _on_timer_timeout() -> void:
	direction *= -1

func _on_body_entered(body: Node) -> void:
	if body.name == "plt_player":
		body.queue_free()
		OS.alert("you died!")
		get_tree().reload_current_scene()
		
	update_animation(direction)

@onready var anim = $AnimatedSprite2D
func update_animation(direction):
	if direction != 0:
		anim.play("walking")
		anim.flip_h = direction < 0
