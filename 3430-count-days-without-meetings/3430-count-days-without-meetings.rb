# @param {Integer} days
# @param {Integer[][]} meetings
# @return {Integer}
def count_days(days, meetings)
# grab the first meeting intervels if all meetings[i][0] and let it be nu ==> array
nu = []
i = 0 
while i < meetings.length
nu[i] = meetings[i][0]
i+=1
end
# sort the nu ==> array
nu = nu.sort
# create a hashes or dictionary or maps that shall be like hash1 => hash1[nu[i]] = {array of elements}(it is because of multiple meetings happening on the same "start")
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
# create hash2 for the optimised hash1 
hash2 = Hash.new
hash1.each_key do|key|
hash2[key] = hash1[key].max
end
puts hash2
# convert them to the 2d array like nu[n][2] ==> it has speciality like meetings array is sorted with respect to their "start"
nu = []
ans = 0
i = 0 
hash2.each_key do|key|
nu[i] = []
nu[i].push(key)
nu[i].push(hash2[key])
i+=1
end
# merging the array with overlapped "end" but not overlapped "start"s
i = 1
while i < nu.length
if nu[i][1] < nu[i-1][1]
nu.delete_at(i)
i-=1
end
i+=1
end
ans = 0
# here is the logic for the optimised meeting array 
i = 1
ans = nu[0][0] - 1 # special for the first index 
while i < nu.length
ans += nu[i][0] - nu[i-1][1] - 1 if nu[i][0] > nu[i-1][1] 
i+=1
end
ans+= days - nu[-1][1] # special for the last index 

return ans

end