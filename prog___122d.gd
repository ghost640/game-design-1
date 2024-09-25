extends Control



func _on_btn_calc_pressed() -> void:
	$ItemList.add_item("x          y")
	for numX in range(-12, 16 + 1):
		var numY = numX**6 - 3*(numX**5) - 93*(numX**4) + 87*(numX**3) + 1596*(numX**2) - 1380*numX - 2800
		var line = "%d    %d" % [numX, numY]
		$ItemList.add_item(line)


func _on_btn_clear_pressed() -> void:
	$ItemList.clear()


func _on_btn_exit_pressed() -> void:
	get_tree().quit()
