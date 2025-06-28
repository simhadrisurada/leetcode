# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    i = 0
    max = 0
    min = prices[i]
    while i < prices.length
    min =  prices[i] if min > prices[i]
    max = prices[i] - min   if max < prices[i] - min
    i+=1
    end
return max

end