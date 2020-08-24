# KinematicBody_Angular_Velocity_Glitch
This test project demonstrates what I believe to be a flaw in how KinematicBody2Ds calculate their angular_velocity.
https://docs.godotengine.org/en/stable/classes/class_kinematicbody2d.html : "When these bodies are moved manually, either from code or from an AnimationPlayer (with AnimationPlayer.playback_process_mode set to "physics"), the physics will automatically compute an estimate of their linear and angular velocity."
When a KinematicBody2D rotates clockwise, and reaches a global_rotation of 180 degrees, it goes to -180 degrees.
This project shows that on the frame where the global_rotation passes 180 degrees and becomes a negative value, it seems that the computed angular_velocity is extremely high. There is no method to get the computed angular_velocity, hence why I made this test project.
I deduce that the way the angular_velocity is created is by simply by subtracting the current rotation by the previous rotation, and multiplying that my delta. On the frame where it passes 180 degrees, this would do something like (179.9 - (-179.7) ) * delta, which would lead to extremely high angular velocities.
