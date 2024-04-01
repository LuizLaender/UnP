extends CharacterBody2D

enum {
	IDLE,
	ALERT,
	ANGRY
}

var state = IDLE
var run_speed = 20

func _process(delta):
	var Player = get_parent().get_node("Player")
	var distance = self.global_position.distance_to(Player.global_position)
	
	if distance > 300:
		state = IDLE
	elif distance < 300 and distance > 150:
		state = ALERT
	elif distance < 150:
		state = ANGRY
		
	#state machine
	
	match(state):
		IDLE:
			self.modulate = Color8(255,255,0,255)
		ALERT:
			self.modulate = Color8(255,155,0,255)
		ANGRY:
			self.modulate = Color8(255,0,0,255)
			velocity = position.direction_to(Player.position) * run_speed
			move_and_slide()
	pass
	
