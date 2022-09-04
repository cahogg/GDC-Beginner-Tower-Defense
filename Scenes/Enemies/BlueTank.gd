extends PathFollow2D

var speed = 150
var hp = 50

onready var health_bar = get_node("HealthBar")

func _ready():
	health_bar.max_value = hp
	health_bar.value = hp
	health_bar.set_as_toplevel(true)

func _physics_process(delta):
	move(delta)

func move(delta):
	set_offset(get_offset() + speed * delta)
	health_bar.set_position(position - Vector2(20,30))

func on_hit(damage):
	hp -= damage
	health_bar.value = hp
	if hp <= 0:
		on_destroy()

func on_destroy():
	self.queue_free()
