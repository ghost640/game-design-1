extends Control



func _on_btn_calc_pressed() -> void:
	for num in range(2, 10+1, 2):
		var num2 = num + 1
		var num3 = num * 2
		var num4 = num * num
		var line = "%d           %d            %d            %d" % [num, num2, num3, num4]
		$ItemList.add_item(line)

func _on_btn_clear_pressed() -> void:
	$ItemList.clear()

func _on_btn_exit_pressed() -> void:
	get_tree().quit()
