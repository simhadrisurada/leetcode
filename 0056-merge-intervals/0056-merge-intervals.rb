# @param {Integer[][]} intervals
# @return {Integer[][]}
def merge(intervals)
    nu = intervals.sort
i = 1
while i < nu.length
if nu[i][1] <= nu[i-1][1]
nu.delete_at(i)
i-=1
end
i+=1
end
i = 1
while i < nu.length
if nu[i][0] <= nu[i-1][1]
nu[i][0] = nu[i-1][0]
nu.delete_at(i-1)
i-=1
end
i+=1
end
return nu
end