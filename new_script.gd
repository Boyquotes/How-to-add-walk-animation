extends Node


@onready var hand = $"."

func _process(delta):
		hand.position.x = lerp(hand.position.x,0.0,delta*5)
		hand.position.y = lerp(hand.position.y,0.0,delta*5)
	
func sway(sway_amount):
	hand.position.x += sway_amount.x*0.000001
	hand.position.y += sway_amount.y*0.000001

func _input(event):
	if event is InputEventMouseMotion:
		hand.sway(Vector2(event.relative.x ,event.relative.y ))
