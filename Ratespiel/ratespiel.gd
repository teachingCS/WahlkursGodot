extends Control

# wir deklarieren uns eine Variable in der die Zufallszahl gespeichert wird
var computer_number
# wir deklarieren uns eine Variable in der die geratene Zahl gespeichert wird
var guessed_number

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Hallo Wahlkurs!")
	# randi_range ist eine Methode die eine Ganzzahl hier von 0 bis 200 zufällig auswählt
	computer_number = randi_range(0,200)
	print(computer_number)



func _on_button_pressed():
	# Der Wert, der aktuell in der Spinbox steht wird in der Variable 'guessed_numner' gespeichert.
	guessed_number = $SpinBox.value
	# Vergleiche die computerzahl  mit der geratenen Zahl
	if (computer_number == guessed_number):
		$Infolabel.text = "richtig"
	elif (computer_number > guessed_number):
		$Infolabel.text = "Zahl muss größer sein"
		print("Zahl muss größer sein")
	elif (computer_number < guessed_number):
		$Infolabel.text = "Zahl muss kleiner sein"
		print("Zahl muss kleiner sein")
