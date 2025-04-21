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

while check(nums,lower,upper,low) != true && low <= high
low+=1
end
while check(nums,lower,upper,high) != true && low <= high
high-=1
end



return high - low + 1
  
end