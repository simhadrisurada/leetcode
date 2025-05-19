# @param {Integer[]} nums
# @return {String}
def valid(a,b,c)
return 0 if a + b > c
return -1
end
def triangle_type(nums)
return "none" if valid(nums[0],nums[1],nums[2]) == -1 || valid(nums[1],nums[2],nums[0]) == -1 || valid(nums[2],nums[0],nums[1]) == -1

if nums.uniq.length == 1
return "equilateral"
elsif nums.uniq.length == 2
return "isosceles"
else
return "scalene"
end
    
end