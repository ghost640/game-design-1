extends Control
var sum = 0
func myAdd(num1, num2):
	return num1 + num2
func mySub(num1, num2):
	return num1 - num2
func myMul(num1, num2):
	return num1 * num2
func myDiv(num1, num2):
	return num1 / num2
func myPow(num1, num2):
	return num1**num2
func myMod(num1, num2):
	return num1 % num2


func _on_btn_add_pressed() -> void:
	$lblOut.text = ""
	var n1 = int($TextEdit.text)
	var n2 = int($TextEdit2.text)
	sum = myAdd(n1, n2)
	$lblOut.text = str(sum)
func _on_btn_sub_pressed() -> void:
	$lblOut.text = ""
	var n1 = int($TextEdit.text)
	var n2 = int($TextEdit2.text)
	sum = mySub(n1,n2)
	$lblOut.text = str(sum)
func _on_btn_mult_pressed() -> void:
	$lblOut.text = ""
	var n1 = int($TextEdit.text)
	var n2 = int($TextEdit2.text)
	sum = myMul(n1, n2)
	$lblOut.text = str(sum)
func _on_btn_mod_pressed() -> void:
	$lblOut.text = ""
	var n1 = int($TextEdit.text)
	var n2 = int($TextEdit2.text)
	sum = myMod(n1, n2)
	$lblOut.text = str(sum)
func _on_btn_div_pressed() -> void:
	$lblOut.text = ""
	var n1 = int($TextEdit.text)
	var n2 = int($TextEdit2.text)
	sum = myDiv(n1, n2)
	$lblOut.text = str(sum)
func _on_btn_pow_pressed() -> void:
	$lblOut.text = ""
	var n1 = int($TextEdit.text)
	var n2 = int($TextEdit2.text)
	sum = myPow(n1, n2)
	$lblOut.text = str(sum)

func _on_btn_exit_pressed() -> void:
	get_tree().quit()


func _on_btn_clear_pressed() -> void:
	$lblOut.text = ""
	$TextEdit.text = ""
	$TextEdit2.text = ""
