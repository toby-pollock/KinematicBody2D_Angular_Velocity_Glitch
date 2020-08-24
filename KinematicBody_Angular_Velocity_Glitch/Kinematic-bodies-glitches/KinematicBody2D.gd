extends KinematicBody2D

export var AVdeg = -15
var LV = Vector2(0, 0)
var processangularvelocity = float(0)
var rotAtLastProcess = float(0)

onready var AV = deg2rad(AVdeg)

func _physics_process(delta):
	translate(LV * delta)
	rotate(AV * delta)
	print(global_rotation)
