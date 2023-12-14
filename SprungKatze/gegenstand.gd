extends Area2D

const ANIMATIONS = ["couch", "family", "kittens", "maru", "pile", "pizza", "sloth"]

# Called when the node enters the scene tree for the first time.
func _ready():
	# eine zufällig ausgewählte Animation wird dem Gegenstand zugewiesen und gestartet
	$AnimatedSprite2D.play(ANIMATIONS.pick_random())

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x = position.x - 10


func _on_visible_on_screen_notifier_2d_screen_exited():
	# damit das Objekt gelöscht wird, wenn es nicht mehr sichtbar ist
	queue_free()
