extends Control



func _on_button_pressed():
	var number = int($LineEdit.text)
	var price = 0.0
	if number > 0 and number <= 99:
		price = 0.30
	elif number > 100 and number <= 499:
		price = 0.28
	elif number > 500 and number <= 749:
		price = 0.27
	elif number > 749 and number <= 999:
		price = 0.26
	elif number > 1000:
		price = 0.25
	else:
		$Label2.text = "Invalid # of copies"
		return
	var answer = float(number) * float(price)
	$Label2.text = "Price per copy: $" + str(price) + "\nTotal cost: $%.2f" % answer

func _on_button_2_pressed():
	$Label2.text = ""
	$LineEdit.text = ""


func _on_button_3_pressed():
	get_tree().quit()
