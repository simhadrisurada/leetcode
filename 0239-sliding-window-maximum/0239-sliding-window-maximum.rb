# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def max_sliding_window(nums, k)
return nums if k == 1
i = 0 
stack = []
while i < k
if stack.length == 0
stack.push(nums[i])
else
while stack.length != 0 && stack[-1] < nums[i]
stack.delete_at(-1)
end
stack.push(nums[i])
end
i+=1
end
nu = []
nu.push(stack[0])
while i < nums.length
if stack.length == 0
stack.push(nums[i])
else
while stack.length != 0 && stack[-1] < nums[i]
stack.delete_at(-1)
end
stack.push(nums[i])
end
if nums[i-k] == stack[0]
stack.delete_at(0)
end
nu.push(stack[0])
i+=1
end
    nu
end