# @param {Integer[]} nums
# @return {Integer}
def longest_consecutive(nums)
return 1 if nums.length == 1
return 0 if nums.length == 0
nums = nums.sort.uniq
i = 1
c = 1
max = 1
while i < nums.length
if nums[i-1]+1 == nums[i]
c+=1 
else
c = 1
end
puts max
max = c if max < c
i+=1
end
return max
end