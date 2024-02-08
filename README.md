# stock-picker
This project is a solution to Stock Picker exercise from The Odin Project's Ruby Course.

The goal is to write a `#stock_picker` method that takes an array of prices in integer where each price represents hypothetical day. Method should return pair of numbers in an array that depicts best day to buy and to sell for maximum profit. Method requries to buy first in order to sell. 

# Pesudocode
1. Create an array `prices`, `profit = 0` and hash `pairs` with and an array as key and value as `profit`
2. Find all possible `dayPrice` combination starting from `0` index of `prices`.
    - eg. `[0, 1] [0, 2] .. [0, n], [1, 2] [1, 3] .. [1, n]`
3. Find the difference of each pair `[x, y]` `y - x` and let it equals to `pairs[x, y] : profit` only if: 
    - `profit` is less than current pair difference.
4. Return `pairs[x, y]`