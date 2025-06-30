# @param {Integer[]} nums
# @return {Integer}
def bin(nu,target)
low,high = 0,nu.length - 1
while low <= high
mid = (low+high)/2
return mid if nu[mid] == target
if nu[mid] < target 
low = mid + 1
else
high = mid - 1
end
end
return -1
end
def absu(n,m)
return n - m if n > m
return m - n
end
def find_lhs(nums)
hash  =Hash.new
i = 0
while i < nums.length
    if hash[nums[i]] == nil
        hash[nums[i]] = 1
    else
        hash[nums[i]] +=1
    end
i+=1
end
nums = nums.sort.uniq
nu = []
nu.push(hash[nums[0]])
i = 1
while i < nums.length
nu.push(hash[nums[i]]+nu[i-1])
i+=1
end

i = 0
max = 0
while i < nums.length
n = bin(nums,nums[i] + 1)
if n != -1
now = nu[n] - nu[i] + hash[nums[i]] 
max = now if now > max
end
i+=1
end
    return max
end