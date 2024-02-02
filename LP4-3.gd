extends Control



func _on_button_pressed():
	var eggs = int($LineEdit.text)
	var cost = 0
	if eggs > 0 and eggs < 4:
		cost = 0.50
	elif eggs >= 4 and eggs < 6:
		cost = 0.45
	elif eggs >= 6 and eggs < 11:
		cost = 0.40
	elif eggs >= 11:
		cost = 0.35
	else:
		$Label2.text = "Please select a better amount of eggs"
		return
	
	var answer = eggs * cost
	$Label2.text = "Your total is: " + str(answer)
	
func _on_button_2_pressed():
	$LineEdit.text = ""
	$Label2.text = ""

func _on_button_3_pressed():
	get_tree().quit()
