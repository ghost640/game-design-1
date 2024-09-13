extends Control




func _on_btn_calc_pressed() -> void:
	var amount = int($txtInput.text)
	var price = 0.0 #price per copy
	var tcost = 0.0 #total cost
	if amount > 0 and amount <= 99:
		price = 0.30
	elif amount > 99 and amount <= 499:
		price = .28
	elif amount > 499 and amount <= 749:
		price = 0.27
	elif amount > 749 and amount <= 1000:
		price = 0.26
	elif amount > 1000:
		price = 0.25
	else:
		$lblResults.text = "Invalid number of copies."
		return
	tcost = amount * price
	$lblResults.text = "price per copy: $" + str(price) + \
				"\nTotal cost: $%.2f" % tcost
func _on_btn_clear_pressed() -> void:
	$lblResults.text = ""
	$txtInput.text = ""
func _on_btn_exit_pressed() -> void:
	get_tree().quit()
