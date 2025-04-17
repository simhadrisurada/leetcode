# @param {Integer[]} nums
# @return {Integer}
def check(n,moves)
return moves if n == 0
return -1 if n == 1
return (n/3) + moves if n%3 == 0
return check(n-2,moves+1)

end
def min_operations(nums)
i = 0
hash = Hash.new
    while i < nums.length
        if hash[nums[i]] == nil
            hash[nums[i]]= 1
        else
            hash[nums[i]]+=1
        end
    i+=1
    end
    count = 0
    hash.each_key do|key|
        return -1 if hash[key] == 1
        count += check(hash[key],0)
    end
return count 
    
end