extends Control



func _on_btn_calc_pressed() -> void:
	$ItemList.add_item("hours    pay")
	for num in range (1, 40+1):
		var pay = num * 4
		var line = "%d    %d" % [num, pay]
		$ItemList.add_item(line)


func _on_btn_clear_pressed() -> void:
	$ItemList.clear()

func _on_btn_exit_pressed() -> void:
	get_tree().quit()
