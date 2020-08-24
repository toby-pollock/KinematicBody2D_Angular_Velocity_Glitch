extends Node2D

onready var label1 = $Label
onready var kin1 = $KinematicBody2D
onready var kin2 = $KinematicBody2D2
export(PackedScene) var ball

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	label1.text = "global_rotation: " + str(rad2deg(kin1.global_rotation))
	if Input.is_action_just_pressed("ui_down"):
		$KinematicBody2D/Position2D.add_child(ball.instance())
	if Input.is_action_just_pressed("ui_right"):
		kin1.AV = deg2rad(100)
	if Input.is_action_just_pressed("ui_left"):
		kin1.AV = deg2rad(10)
		pass
	pass
