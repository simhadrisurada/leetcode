# @param {Integer[]} differences
# @param {Integer} lower
# @param {Integer} upper
# @return {Integer}
def check(nu,low,high,pre)
if pre - nu[0] >= low && pre - nu[0] <=high && pre - nu[-1] >= low && pre - nu[-1] <=high
return true 
end
return false
end
def bin_1()
low = lower
high = upper
while low <= high
out = check(nums,lower,upper,low)
low += 1
end
end
def number_of_arrays(differences, lower, upper)
nums = differences
i = nums.length - 1
while i > 0 
nums[i-1] += nums[i]
i-=1
end
nums = nums.sort
low = lower
high = upper
count = 0 
while low <= high
count+=1 if check(nums,lower,upper,low)
low += 1
end
return count
  
end