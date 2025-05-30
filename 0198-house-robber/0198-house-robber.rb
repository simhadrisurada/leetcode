# @param {Integer[]} nums
# @return {Integer}

def rob(nums)
return nums.max if nums.length <=2
 i = 2
max = 0
 while i < nums.length
    max = [nums[i-2],max].max
    nums[i] += max
    i+=1
 end
 return nums.max
    
end