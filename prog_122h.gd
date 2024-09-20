extends Control



func _on_btn_calc_pressed() -> void:
	$ItemList.add_item("num    square    squareroot    cube    4th root")
	for num in range(1,20+1):
		var numsquared = num**2
		var numsqrt = sqrt(num)
		var numcubed = num**3
		var num4throot = float(num**.25)
		var line = "%d             %d         %.4f              %d        %.4f" % [num, numsquared, numsqrt, numcubed, num4throot]
		$ItemList.add_item(line)

func _on_btn_clear_pressed() -> void:
	$ItemList.clear()

func _on_btn_exit_pressed() -> void:
	get_tree().quit()
