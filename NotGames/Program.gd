extends Control



func _on_button_pressed():
	var pounds = int($LineEdit.text)
	var length = int($LineEdit2.text)
	var width = int($LineEdit3.text)
	var height = int($LineEdit4.text)
	
	var area = length * width * height
	var girth = false
	var heavy = false
	
	if area > 100000:
		girth = true
	if pounds > 27:
		heavy = true
	
	if girth == false and heavy == false:
		$Label2.text = "Good to go."
	elif girth == false and heavy == true:
		$Label2.text = "Too heavy."
	elif girth == true and heavy == false:
		$Label2.text = "Too large."
	else:
		$Label2.text = "Too heavy and too large."

func _on_button_2_pressed():
	$LineEdit.text = ""
	$LineEdit2.text = ""
	$LineEdit3.text = ""
	$LineEdit4.text = ""
	$Label2.text = ""

func _on_button_3_pressed():
	get_tree().quit()
