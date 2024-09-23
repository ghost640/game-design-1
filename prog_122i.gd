extends Control



func _on_btn_calc_pressed() -> void:
	$ItemList.add_item("number    cuberoot    cube")
	for num in range(-25, 25+1):
		var numcubed = num**3
		var numcuberoot = 
		var line = "%d    %.4f    %d" % [num, numcuberoot, numcubed]
		$ItemList.add_item(line)

func _on_btn_clear_pressed() -> void:
	$ItemList.clear()

func _on_btn_exit_pressed() -> void:
	geget_tree().quit()
