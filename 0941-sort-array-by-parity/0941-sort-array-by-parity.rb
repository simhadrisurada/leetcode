# @param {Integer[]} nums
# @return {Integer[]}
def sort_array_by_parity(nums)
i = 0
nu1 = []
nu2 = []
while i < nums.length
nu1.push(nums[i])if nums[i]%2 == 0
nu2.push(nums[i])if nums[i]%2 == 1
i+=1
end
    nu1 = nu1.sort
    nu2 = nu2.sort
    return nu1+nu2
end