extends Control

func _on_button_pressed():
	var limit = float($LineEdit.text)
	var speed = float($LineEdit2.text)
	var money = ((speed - limit) * 5) + 20
	$Label3.text = "Fine: $ %.2f" % money

func _on_button_2_pressed():
	$LineEdit.text = ""
	$LineEdit2.text = ""
	$Label3.text = ""
func _on_button_3_pressed():
	get_tree().quit()
