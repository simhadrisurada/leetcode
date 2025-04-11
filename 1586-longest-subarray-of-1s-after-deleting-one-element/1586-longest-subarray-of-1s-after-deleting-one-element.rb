# @param {Integer[]} nums
# @return {Integer}
def longest_subarray(nums)
cur = 0
maxi = -1
zero = 0
ones = 0
p1 = 0
p2 = 0
nu = []
while p2 < nums.length
zero += 1 if nums[p2] == 0
ones += 1 if nums[p2] == 1
while p1 < nums.length && zero > 1 && p1 <= p2
zero -= 1 if nums[p1] == 0
ones -= 1 if nums[p1] == 1
p1+=1
end
if ones > maxi
maxi = ones 
maxi-=1 if zero == 0
end
p2+=1
end
return maxi
end