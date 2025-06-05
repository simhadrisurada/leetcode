# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def max_sliding_window(nums, k)
return nums if k == 1
i = 0 
queue = []
while i < k
if queue.length == 0
queue.push(nums[i])
else
while queue.length != 0 && queue[-1] < nums[i]
queue.delete_at(-1)
end
queue.push(nums[i])
end
i+=1
end
nu = []
nu.push(queue[0])
while i < nums.length
if queue.length == 0
queue.push(nums[i])
else
while queue.length != 0 && queue[-1] < nums[i]
queue.delete_at(-1)
end
queue.push(nums[i])
end
if nums[i-k] == queue[0]
queue.delete_at(0)
end
nu.push(queue[0])
i+=1
end
    nu
end