# @param {Integer[]} nums
# @return {Integer}
def give(nu,now)
ans = []
i = 0
while i < nu.length
if nu[i][-1] > now && ans.length < nu[i].length
ans = nu[i]
end
i+=1
end
return ans
end
def length_of_lis(nums)
return 1 if nums.length == 1
max = 0
nu = [[nums[-1]]]
i  = nums.length - 2
while i >= 0
now = give(nu,nums[i])
nu.push(now+[nums[i]])
max = now.length + 1 if max < now.length + 1
i-=1
end
   max 
   #dp solution 
end