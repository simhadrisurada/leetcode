# @param {Integer[]} nums
# @return {Integer}
def min_increment_for_unique(nums)
nums = nums.sort
i = 1 
k = 0
while i < nums.length
if nums[i] <= nums[i-1]
k+=nums[i-1] - nums[i]
nums[i]=nums[i-1]+1
i-=1
k+=1
end
i+=1
end
    return k
end