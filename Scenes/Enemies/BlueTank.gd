extends PathFollow2D

var speed = 300

func _physics_process(delta):
	move(delta)

func move(delta):
	set_offset(get_offset() + speed * delta)
