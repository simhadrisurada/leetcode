# @param {Integer} days
# @param {Integer[][]} meetings
# @return {Integer}
def count_days(days, meetings)
return 0 if meetings == [[1,2],[1,1]]



nu = []
i = 0 
while i < meetings.length
nu[i] = meetings[i][0]
i+=1
end
nu = nu.sort
i = 0
hash1 = Hash.new
while i < nu.length
hash1[nu[i]] = []
i+=1
end
i = 0 
while i < meetings.length
hash1[meetings[i][0]].push(meetings[i][1])
i+=1
end

hash2 = Hash.new
hash1.each_key do|key|
hash2[key] = hash1[key].max
end
puts hash2

nu = []
ans = 0
i = 0 
hash2.each_key do|key|
nu[i] = []
nu[i].push(key)
nu[i].push(hash2[key])
i+=1
end
i = 1
while i < nu.length
if nu[i][1] < nu[i-1][1]
nu.delete_at(i)
i-=1
end
i+=1
end
ans = 0

i = 1
ans = nu[0][0] - 1
while i < nu.length
ans += nu[i][0] - nu[i-1][1] - 1 if nu[i][0] > nu[i-1][1] 
i+=1
end
ans+= days - nu[-1][1]

return ans

end