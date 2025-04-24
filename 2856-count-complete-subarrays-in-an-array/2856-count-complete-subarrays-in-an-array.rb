# @param {Integer[]} nums
# @return {Integer}
def check(nu,low,high)
hash= Hash.new
while low <= high
hash[nu[low]] = 0
low+=1
end
return hash.length
end
def count_complete_subarrays(nums)
num = check(nums,0,nums.length - 1)
p1,p2,count = 0,0,0 
while p2 < nums.length 
    while check(nums,p1,p2) != num && p2 < nums.length
    p2+=1
    end
    count += nums.length - p2
    p1+=1
end
return count
end