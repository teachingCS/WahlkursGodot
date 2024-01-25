extends Node2D
# Schritt 1: Preload der Szene
const GEGENSTAND = preload("res://gegenstand.tscn")



func _on_timer_timeout():
	# Schritt 2: Objekt der Szene erzeugen
	var gegenstand = GEGENSTAND.instantiate()
	# Schritt 3: Das Objekt als Kind-Node der Welt hinzufügen
	add_child(gegenstand)


func _on_score_timer_timeout():
	GameState.current_score = GameState.current_score + 1
	$ScoreLabel.text = "Score: " + str(GameState.current_score)
