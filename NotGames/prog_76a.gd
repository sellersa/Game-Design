extends Control


func _on_button_pressed():
	var number = int($LineEdit.text)
	var number2 = number * 9
	var answer = number2 * 12345679
	$Label2.text = str(number) + "\nX 9" + "\n______________\n" + str(number2) + "\n X 12345679" + "\n______________\n" + str(answer) + "\n    Surprise!!!!"


func _on_button_2_pressed():
	$Label2.text = ""
	$LineEdit.text = ""


func _on_button_3_pressed():
	get_tree().quit()
