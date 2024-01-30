extends Control



func _on_button_pressed():
	var num1 = int($LineEdit.text)
	var num2 = int($LineEdit2.text)
	var Sum = num1 + num2
	var Diff = num1 - num2
	var Product = num1 * num2
	var Avg = Sum / 2.0
	var Abs = abs(Diff)
	var Max = 0
	var Min = 0
	if num1 > num2:
		Max = num1
	else:
		Max = num2
	
	if Max == num1:
		Min = num2
	else:
		Min = num1
	
	$Label.text = "Sum: " + str(Sum) + "\nDifference: " + str(Diff) + "\nProduct: " + str(Product) + "\nAverage: " + str(Avg) + \
					"\nAbsolute Difference: " + str(Abs) + "\nMax: " + str(Max) + "\nMin: " + str(Min)
	
func _on_button_2_pressed():
	$Label.text = ""
	$LineEdit.text = ""
	$LineEdit2.text = ""


func _on_button_3_pressed():
	get_tree().quit()
