extends Node2D


#allows turrets to turn at set FPS in settings
func _physics_process(delta):
	turn()
		
#currently lets turrets turn to face the direction of the cursor
func turn():
	var enemy_position = get_global_mouse_position()
	get_node("Turret").look_at(enemy_position)
