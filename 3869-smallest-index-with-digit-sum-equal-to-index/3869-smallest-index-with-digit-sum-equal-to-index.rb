# @param {Integer[]} nums
# @return {Integer}
def digits(n,c)
return c if n == 0
return digits(n/10,c+(n%10))
end
def smallest_index(nums)
nu = []
i = 0
while i < nums.length
if digits(nums[i],0) == i
nu.push(i)
end
i+=1
end
return -1 if nu.length == 0
   return nu.min 
end