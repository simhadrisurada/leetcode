# @param {Integer[]} nums
# @param {Integer[][]} queries
# @return {Boolean}
def is_zero_array(nums, queries)
i = 0
nu = [0]*(nums.length+1)
while i < queries.length
nu[queries[i][0]] += -1
nu[queries[i][1]+1] += 1
i+=1
end

i = 1
nums[0]+=nu[0]
while i < nu.length - 1
nu[i]+=nu[i-1]
nums[i]+=nu[i]
i+=1
end
i=0
while i < nums.length
if nums[i] > 0
return false
end
i+=1
end

return true
    
end