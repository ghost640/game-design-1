extends Control



func _on_btn_calc_pressed() -> void:
	var eggs = int($txtNum.text)
	var dozens = floor(eggs / 12)
	var remainder = eggs % 12
	var dozenprice = 0
	var remainprice = 0
	var totalprice = 0
	if dozens >= 0 and dozens <= 3:
		dozenprice = .50
		remainprice = dozenprice / 1/12
	elif dozens > 3 and dozens <= 5:
		dozenprice = .45
		remainprice = dozenprice / 1/12
	elif dozens > 5 and dozens <= 10:
		dozenprice = .40
		remainprice = dozenprice / 1/12
	elif dozens > 10:
		dozenprice = .35
		remainprice = dozenprice / 1/12
	remainprice = remainder * remainprice
	totalprice = remainprice + dozenprice
	$lblOut.text = "\nthe bill is equal to: $%.2f" % totalprice

func _on_btn_clear_pressed() -> void:
	$txtNum.text = ""
	$lblOut.text = ""
func _on_btn_exit_pressed() -> void:
	get_tree().quit()
