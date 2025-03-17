# @param {Integer[]} nums
# @return {Boolean}
def divide_array(nums)
nums = nums.sort
i = 1
while i < nums.length
if nums[i] == nums[i-1]
i+=1
else
return false
end
i+=1
end
  return true   
end