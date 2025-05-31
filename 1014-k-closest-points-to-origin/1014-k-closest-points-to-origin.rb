# @param {Integer[][]} points
# @param {Integer} k
# @return {Integer[][]}
def k_closest(points, k)
hash = Hash.new
i = 0
while i < points.length
distance = Math.sqrt((points[i][0]**2) + (points[i][1]**2))
if hash[distance] == nil
hash[distance] = [points[i]]
else
hash[distance].push(points[i])
end
i+=1
end
nu = []
hash = hash.sort
i =0
while i< hash.length
nu += hash[i][1]
i+=1
end

    return nu[0,k]
end