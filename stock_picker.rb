# 09/02/2024 stock_picker.rb

prices = [17,3,6,9,15,8,6,1,10]

# Method stock_picker
def stock_picker (array)
  pairs_profit = {}
  # pair_profit is difference of sell and buy
  array.combination(2) do |buy, sell|
    pairs_profit[[array.index(buy), array.index(sell)]] = sell - buy
  end
  pairs_profit.select {|pair, profit| profit == pairs_profit.values.max}.keys.flatten
end

p stock_picker (prices)
