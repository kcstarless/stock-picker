# stock-picker
This project is a solution to Stock Picker exercise from The Odin Project's Ruby Course.

## Description
The goal is to write a `#stock_picker` method that takes an array of prices in integer where each price represents hypothetical day. Method should return pair of numbers in an array that depicts best day to buy and to sell for maximum profit. Method requries to buy first in order to sell. 

## Pesudocode
1. Create an array `prices`.
    - each value respresents price.
    - index of price represents day, starting from day 0.
2. Create a hash `pair_profit`.
    - key: buy and sell (index of `prices`)
    - value: as difference between sell and buy (sell - buy).
3. Find all possible price pair combination from `prices`.
4. Assign each pair and value to `pair_profit`.
5. Find highest value from `pair_profit` and return it's key. 

## Usage
Run in your terminal `ruby stock_picker.rb`

## Expected output
```ruby
[1, 4]
```

## Thoughts
My first attempt was rather long with nested loops but with discovery of combination method I have made the shorter and more readable. 

The return value at first was:
`pair_profit.key(pair_profit.values.max)`
But I noticed this only return first occurrence of the max value key. The solution was to chain the method:
`pair_profit.select {|pair, profit| profit == pair_profit.values.max}.keys`
Working solution but return nested array to deal with this I've added:
`.flatten`



