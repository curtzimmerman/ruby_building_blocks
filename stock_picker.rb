def stock_picker(prices)
	buy_date, sell_date, profit = 0, 0, 0

	prices.each_with_index do |buy, buy_index|
		prices.each_with_index do |sell, sell_index|
			if sell - buy > profit && sell_index > buy_index
				buy_date = buy_index
				sell_date = sell_index
				profit = sell - buy
			end
		end

	end
	return [buy_date, sell_date]
end

puts stock_picker([17,3,6,9,15,8,6,1,10])