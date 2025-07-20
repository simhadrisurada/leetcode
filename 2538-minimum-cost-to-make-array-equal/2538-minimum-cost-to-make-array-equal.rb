# @param {Integer[]} nums
# @param {Integer[]} cost
# @return {Integer}
def give(nu,co,now)
i = 0
ans = 0
while i < nu.length
ans += ((nu[i] > now ? nu[i]-now : now - nu[i])*co[i])
i+=1
end
return ans
end
def min_cost(nums, cost)
low,high = nums.min,nums.max
ans = Float::INFINITY
while low <= high
mid = (low + high)/2
plot1 = give(nums,cost,mid) 
plot2 = give(nums,cost,mid + 1)
puts [plot1,plot2,ans].inspect
ans = [plot1,plot2,ans].min
    if plot1 > plot2
        low = mid + 1
    else
        high = mid - 1
    end
end
    return ans
end