# @param {Integer[]} nums
# @return {Integer}
def run(nums,now)
ans = 0
i =0
    while i < nums.length
        ans += (nums[i] > now ? nums[i] - now : now - nums[i])
        i+=1
    end
return ans
end
def min_moves2(nums)
ans = Float::INFINITY
    low,high = nums.min,nums.max
    while low <= high
        mid = (low + high)/2
        plot1 = run(nums,mid)
        plot2 = run(nums,mid+1)
        ans = [plot1,plot2,ans].min
        if plot1 > plot2
            low = mid + 1
        else
            high = mid -1
        end
    end
    return ans
end