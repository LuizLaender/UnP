extends CharacterBody2D

var movespeed = 500
var bullet_speed = 2000
var bullet = preload("res://bullet.tscn")

func _physics_process(delta):
	velocity = Vector2()
	if Input.is_action_pressed("up"):
		velocity.y -= 1
	if Input.is_action_pressed("down"):
		velocity.y += 1
	if Input.is_action_pressed("right"):
		velocity.x += 1
	if Input.is_action_pressed("left"):
		velocity.x -= 1

	velocity = velocity * movespeed
	
	if Input.is_action_just_pressed("tiro"):
		fire()
	
	look_at(get_global_mouse_position())
	move_and_slide()
	

		
	
func fire():
	var bullet_instance = bullet.instantiate()
	bullet_instance.position = get_global_position() + Vector2(10,10)
	bullet_instance.rotation_degrees = rotation_degrees
	get_tree().get_root().call_deferred("add_child", bullet_instance)

func kill():
	get_tree().reload_current_scene()

func _on_area_2d_body_entered(body):
	if body.is_in_group("Enemy"):
		kill()
