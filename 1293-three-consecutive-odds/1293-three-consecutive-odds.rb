# @param {Integer[]} arr
# @return {Bool
def check(n,m)
return n%m != 0
end
def three_consecutive_odds(arr)
i = 1
while i < arr.length - 1
if check(arr[i],2) && check(arr[i-1],2) && check(arr[i+1],2)
return true 
end
i+=1
end
    return false
end