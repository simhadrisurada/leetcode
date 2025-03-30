# @param {Integer[]} nums
# @return {Integer[]}
def check(nums,nu,endl)
stack = []
i = 0 
while i < nums.length
if stack.length == 0 || nums[stack.last] > nums[i]
stack.push(i)
elsif nums[stack.last] <= nums[i]
while stack.length != 0 && nums[stack.last] < nums[i]
nu[stack.last] = nums[i] if stack.last < endl
stack.pop
end
stack.push(i)
end
i+=1
end
end
def next_greater_elements(nums)
nu = [-1]*nums.length
 k = nums.length
check(nums + nums,nu,k)



return nu
    
end