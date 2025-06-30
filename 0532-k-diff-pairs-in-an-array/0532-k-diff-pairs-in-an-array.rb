# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def bin(nu,target)
    low,high = 0,nu.length - 1
    while low <= high
    mid = low+high 
    mid/=2
    return mid if nu[mid] == target
        if nu[mid] < target
        low = mid + 1
        else
        high = mid - 1
        end
    end
return -1
end
def dummy(nums)
i = 0
hash = Hash.new
while i  < nums.length
if hash[nums[i]] == nil
hash[nums[i]] = 1
else
hash[nums[i]]+=1
end
i+=1
end
ct = 0
hash.each_key do|key|
ct+= 1 if hash[key] >1
end
    return ct
end
def find_pairs(nums, k)
nums = nums.sort
hash = Hash.new
i = 0
ct = 0
if k == 0
return dummy(nums)
end



    while i < nums.length
        if hash[nums[i]] == nil
           hash[nums[i]] = 0
        n = bin(nums,nums[i]+k)
        ct+=1 if n != -1  && i != n
        end
    i+=1
    end
return ct
    
end