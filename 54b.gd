extends Control





func _on_btn_calc_pressed() -> void:
	var num1 = int($txtNum1.text)
	var num2 = int($txtNum2.text)
	var num3 = int($txtNum3.text)
	var num4 = int($txtNum4.text)
	var sum = num1 + num2 + num3 + num4
	var average = sum / 4
	$lblSum.text = "Sum: " + str(sum)
	$lblAverage.text = "Average: " + str(average)

func _on_btn_clear_pressed() -> void:
	$lblAverage.text = ""
	$lblSum.text = ""
	$txtNum1.text = ""
	$txtNum2.text = ""
	$txtNum3.text = ""
	$txtNum4.text = ""


func _on_btn_exit_pressed() -> void:
	get_tree().quit()
