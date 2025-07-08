# @param {Integer[]} time
# @param {Integer} total_trips
# @return {Integer}
def check(nu,target,mid)
    ans = 0
    i = 0
    while i < nu.length
    ans += (mid/nu[i])
    i+=1
    end
    return ans >= target
end
def bin(nu,n,target)
    low = 1
    high = n
        while low <= high
            mid = (low+high)/2
            if check(nu,target,mid) == true 
            high = mid - 1
            else
            low = mid + 1
            end
            puts mid
        end
        return low
end

def minimum_time(time, total_trips)
time = time.sort
now = total_trips*time[0]
return bin(time,now,total_trips)
end