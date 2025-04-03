# @param {Integer[]} nums
# @return {Integer}
def maximum_triplet_value(nums)
nu = []
i = 0
max = nums[0]
max_dif = 0
while i < nums.length
max = [max,nums[i]].max
nu.push(max-nums[i])
i+=1
end
max = 0
i = 1
nuu = []
while i < nu.length - 1
max = [max,nu[i]].max
nuu.push(max*nums[i+1])
i+=1
end






return nuu.max
end