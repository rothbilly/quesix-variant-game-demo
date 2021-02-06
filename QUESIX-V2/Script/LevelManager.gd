extends Node2D


export(NodePath) onready var timer_node = get_node(timer_node) as Timer 
export(NodePath) onready var time_label = get_node(time_label) as Label

func _ready():
	pass
	
func _process(delta):
	time_label.text = str(round(timer_node.time_left)) + " S"


func _on_Timer_timeout():
	EventController.emit_signal("update_timer")
	##$Background/Bg1.get_material().set_shader_param("velocity",-1)

