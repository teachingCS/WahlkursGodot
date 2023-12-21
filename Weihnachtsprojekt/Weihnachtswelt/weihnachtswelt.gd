extends Node2D


func _on_button_baum_pressed():
	$Weihnachtsbaum.show()


func _on_button_geschenke_pressed():
	$Geschenke.show()


func _on_button_musik_pressed():
	$AudioStreamPlayer.play()
