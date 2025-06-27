# @param {Integer[]} nums
# @return {Integer}
def give(nu,range)
i = 0
j = nu.length - 1
target  = nu[j]
while i < range && j >= 0
if nu[j].length < target.length
target  = nu[j]
end
i+=1
j-=1
end
return target
end
def jump(nums)
 nu = [[nums[-1]]]
 i = nums.length - 2
 while i >= 0
  nu.push(give(nu,nums[i])+[nums[i]])
 i-=1
 end
return nu[-1].length - 1
end