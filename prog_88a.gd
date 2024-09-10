extends Control



func _on_btn_calc_pressed() -> void:
	var num1 = int($txtNum1.text)
	var num2 = int($txtNum2.text)
	var Sum = num1 + num2
	var Diff = num1 - num2
	var Abs = abs(Diff)
	var Product = num1 * num2
	var Average = Sum / 2
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
	
	$lblAns.text = "sum: " + str(Sum) + \
				"\nDiffereance: " + str(Diff) + \
				"\nProdcut: " + str(Product) + \
				"\nAverage: " + str(Average) + \
				"\nDistance: " + str(Abs) + \
				"\nMax: " + str(Max) + \
				"\nMin: " + str(Min)


func _on_btn_clear_pressed() -> void:
	$txtNum1.text = ""
	$txtNum2.text = ""
	$lblAns.text = ""


func _on_btn_exit_pressed() -> void:
	get_tree().quit()
