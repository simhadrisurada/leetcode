# @param {Integer[]} nums
# @return {Integer}
def minimum_operations(nums)
c=0
nu = nums
while nu.length != nu.uniq.length
   
nu.delete_at(0)
    nu.delete_at(0)
    nu.delete_at(0)

c+=1
end

    return c
end