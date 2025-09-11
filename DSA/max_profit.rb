#121. Best Time to Buy and Sell Stock
def max_profit(prices)
  return if prices.empty?
  min_price = prices[0]
  max_profit = 0
  prices[1..-1].each do |price|
    min_price = [min_price, price].min
    max_profit = [max_profit, price - min_price].max
  end
  max_profit
end
