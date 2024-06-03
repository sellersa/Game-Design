extends Control

func myAdd(num1, num2):
	return num1 + num2
	
func mySub(num1, num2):
	return num1 - num2
	
func myMult(num1, num2):
	return num1 * num2
	
func myPower(num1, num2):
	return num1 ** num2
	
func myDivide(num1, num2):
	return num1 / num2
	
func myMod(num1, num2):
	return num1 % num2
	


func _on_plus_pressed():
	$oper.text = "+"
	var h = int($LineEdit.text)
	var l = int($LineEdit2.text)
	$resuer.text = str(myAdd(h, l))
func _on_minus_pressed():
	$oper.text = "-"
	var h = int($LineEdit.text)
	var l = int($LineEdit2.text)
	$resuer.text = str(mySub(h, l))
func _on_markiplier_pressed():
	$oper.text = "*"
	var h = int($LineEdit.text)
	var l = int($LineEdit2.text)
	$resuer.text = str(myMult(h, l))
func _on_power_pressed():
	$oper.text = "**"
	var h = int($LineEdit.text)
	var l = int($LineEdit2.text)
	$resuer.text = str(myPower(h, l))
func _on_divide_pressed():
	$oper.text = "/"
	var h = float($LineEdit.text)
	var l = float($LineEdit2.text)
	$resuer.text = str(myDivide(h, l))
func _on_mod_pressed():
	$oper.text = "MOD"
	var h = int($LineEdit.text)
	var l = int($LineEdit2.text)
	$resuer.text = str(myMod(h, l))
func _on_clear_pressed():
	$oper.text = ""
	$resuer.text = ""
	$LineEdit.text = ""
	$LineEdit2.text = ""


func _on_close_pressed():
	get_tree().quit()
