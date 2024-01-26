extends Control



func _on_button_pressed():
	var one = float($LineEdit.text)
	var two = float($LineEdit2.text)
	var three = float($LineEdit3.text)
	var four = float($LineEdit4.text)
	var sum = one + two + three + four
	var avg = sum / 4
	$Label3.text = str(avg)

func _on_button_2_pressed():
	$Label3.text = ""
	$LineEdit.text = ""
	$LineEdit2.text = ""
	$LineEdit3.text = ""
	$LineEdit4.text = ""


func _on_button_3_pressed():
	get_tree().quit()
