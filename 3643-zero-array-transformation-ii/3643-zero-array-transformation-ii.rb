# @param {Integer[]} nums
# @param {Integer[][]} queries
# @return {Integer}
def check(nums,nu,queries,mid)

i  = 0 
while i <= mid
    nu[queries[i][0]] -= queries[i][2]
    nu[queries[i][1]+1] += queries[i][2]
    i+=1
end
i = 1
return -1 if nu[0] + nums[0] > 0
while i < nu.length - 1
nu[i]+=nu[i-1]
return -1 if nu[i] + nums[i] > 0
i+=1
end
return 0
end
def min_zero_array(nums, queries)
return 0 if nums.sum == 0
n = queries.length
n-=1
low = 0 
high = queries.length - 1
while low <= high
mid = (low+high)/2
n = check(nums,[0]*(nums.length+1),queries,mid)
    if n == 0
    high = mid-1
    else
    low = mid+1
    end
  
end
return -1 if low == queries.length
    return  high+2
end