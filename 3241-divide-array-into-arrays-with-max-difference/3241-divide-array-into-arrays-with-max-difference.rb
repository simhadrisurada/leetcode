# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[][]}
def absu(n,m)
return m - n if m > n
return n - m
end
def divide_array(nums, k)
nums = nums.sort
 nu = []
i = 0
while i < nums.length
if absu(nums[i],nums[i+2]) <= k
nu.push(nums[i,3])
else
return []
end
i+=3
end
return nu 
end