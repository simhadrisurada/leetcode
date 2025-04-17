# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def count_pairs(nums, k)
m=0
i=0
while i < nums.length
j=i+1
while j < nums.length
m+=1 if nums[i]==nums[j] && (i*j)%k == 0
j+=1
end
i+=1
end
    return m
end