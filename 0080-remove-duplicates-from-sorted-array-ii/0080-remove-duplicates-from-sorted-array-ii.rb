# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
hash = Hash.new
i = 0
while i < nums.length
    if hash[nums[i]] == nil
        hash[nums[i]] = 1
    else
        hash[nums[i]] +=1
    end

i+=1
end
i = 0 
hash.each_key do|key|
    if hash[key] >= 2
    nums[i] = key
    nums[i+1] = key
    i+=2
    elsif hash[key] == 1
    nums[i] = key
    i+=1
    end
end
return i
    
end