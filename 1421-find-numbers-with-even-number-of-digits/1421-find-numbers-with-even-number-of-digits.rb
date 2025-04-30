# @param {Integer[]} nums
# @return {Integer}
def count(n)
c= 0 
while n != 0
n = n/10
c+=1
end
return c
end
def find_numbers(nums)
i = 0 
c = 0
while i < nums.length
if count(nums[i])%2 == 0
c+=1
end
i+=1
end
    return c
end