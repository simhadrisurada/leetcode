# @param {Integer[]} nums
# @return {Integer}
$max = -Float::INFINITY
def go(nums,i,now,n)
$max = now if now > $max && n != 0
if i >= nums.length
return 
end
go(nums,i+1,now*nums[i],n+1)
go(nums,i+1,now,n)

end
def max_strength(nums)

go(nums,0,1,0)  
n = $max
$max = -Float::INFINITY
 return n  
end