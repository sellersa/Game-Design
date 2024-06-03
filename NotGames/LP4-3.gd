extends Control



func _on_button_pressed():
	var eggs = int($LineEdit.text)
	var dozens = floor(eggs / 12)
	var remainder = eggs % 12
	var cost = 0
	if dozens >= 0 and dozens < 4:
		cost = 0.50
	elif dozens >= 4 and dozens < 6:
		cost = 0.45
	elif dozens >= 6 and dozens < 11:
		cost = 0.40
	elif dozens >= 11:
		cost = 0.35
	else:
		$Label2.text = "Please select a better amount of eggs"
		return
	print(str(cost))
	var dozencost = (cost) * (dozens)
	var remaindercost = (remainder) * (cost / 12)
	var answer = (dozencost) + (remaindercost)
	$Label2.text = "Your total is: " + str(answer)
	
func _on_button_2_pressed():
	$LineEdit.text = ""
	$Label2.text = ""

func _on_button_3_pressed():
	get_tree().quit()
