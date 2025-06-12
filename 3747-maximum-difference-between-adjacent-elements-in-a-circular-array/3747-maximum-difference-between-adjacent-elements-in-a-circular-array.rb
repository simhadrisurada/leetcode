# @param {Integer[]} nums
# @return {Integer}
def abs(n,m)
if n-m < 0 
return m-n
end

return n-m
end
def max_adjacent_distance(nums)
i = 0 
    c = -1
    while i < nums.length 
    if abs(nums[i],nums[i-1]) > c
    c = abs(nums[i],nums[i-1])
    end
    i+=1
    end
    
return c
    
    
end