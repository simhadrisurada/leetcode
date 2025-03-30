# @param {String} s
# @return {Integer[]}
def partition_labels(s)
hash = Hash.new
i = 0 
#capture the start index and the ending index using hashes
while i < s.length
if hash[s[i]] == nil
hash[s[i]] = [i,0] 
end
hash[s[i]][1] = i
i+=1
end
# convert hashes into arr of from arr[n][2] where n is the number different charecters with their intervals in it 
nu = []
hash.each_key do|key|
nu.push(hash[key])
end
nu = nu.sort # sort them by their starting indexes
############################ merging the intervals ###########################
i = 1
temp = nu[0]
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
##############################################################################
############ capture the answer ##############################################
i = 0
nuu = []
while i < nu.length
nuu.push(nu[i][1] - nu[i][0] + 1)
i+=1
end
#############################################################################

return nuu 
######## return the  answer ###########
end