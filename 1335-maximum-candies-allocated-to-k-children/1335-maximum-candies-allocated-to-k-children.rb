# @param {Integer[]} candies
# @param {Integer} k
# @return {Integer}
def check(nu,target,weapon)
    i = 0
    ans = 0
    while i < nu.length
    ans+=(nu[i]/weapon)
    i+=1
    end
return 0 if ans >= target
return -1
end
def bin(nu,low,high,target)
while low <= high
    mid = (low+high)/2
if(check(nu,target,mid) == 0)
low = mid+1
else
high = mid-1
end
end
return high
end
def maximum_candies(candies, k)
maxi = candies.max
return bin(candies,1,maxi,k)



end