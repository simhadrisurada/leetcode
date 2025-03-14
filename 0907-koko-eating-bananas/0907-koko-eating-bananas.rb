# @param {Integer[]} piles
# @param {Integer} h
# @return {Integer}
def check(nu,mid,target)
ans = 0
i = 0 
while i < nu.length
ans+=1 if nu[i]%mid != 0
ans+=(nu[i]/mid)
i+=1
end
return 0 if ans <= target
return -1
end
def bin(sum,low,high,target)
    while low <= high
        mid = (low+high)/2
        if check(sum,mid,target) == 0
            high = mid -1
        else
            low = mid+1
        end
    end
return low

end


def min_eating_speed(piles, h)
return bin(piles,1,piles.max,h)

end