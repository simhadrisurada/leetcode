# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def bin(nu,k)
low,high = 0,nu.length - 1
while low <= high
mid = (low+high) /2
return mid if nu[mid] == k
if nu[mid] < k
low = mid + 1
else
high = mid - 1
end
end
return -1
end
def max_subsequence(nums, k)
nu = nums.sort
nu = nu[nu.length - k,k]
nu1 = []
i = 0
j = 0
while i < nums.length && nu.length != 0
n = bin(nu,nums[i]) 
if n != -1
nu1.push(nums[i])
nu.delete_at(n)
end
i+=1
end
    return nu1
end