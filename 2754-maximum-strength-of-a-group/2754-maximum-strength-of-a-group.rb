# @param {Integer[]} nums
# @return {Integer}
$max = []
def go(nums,i,now,n)
if i >= nums.length
$max.push(now) if n != 0
return 
end
go(nums,i+1,now*nums[i],n+1)
go(nums,i+1,now,n)
end
def max_strength(nums)
go(nums,0,1,0)

n = $max
$max = []
 return n.max  
end