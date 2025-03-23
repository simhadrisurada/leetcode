# @param {Integer} n
# @param {Integer[][]} edges
# @param {Integer} source
# @param {Integer} destination
# @return {Boolean}

def check(hash,key,hash2)
i = 0
while i < hash[key].length 
if hash2[hash[key][i]] == nil 
hash2[hash[key][i]] = 0
check(hash,hash[key][i],hash2)
end
i+=1
end
end
def valid_path(n, edges, source, destination)
return true if source == destination
hashi = Hash.new
i = 0 
while i < edges.length
    hashi[edges[i][1]]= []
    hashi[edges[i][0]]= []
    i+=1
end
i = 0
while i < edges.length
    hashi[edges[i][1]][hashi[edges[i][1]].length] = edges[i][0]
    hashi[edges[i][0]][hashi[edges[i][0]].length] = edges[i][1]
    i+=1
end
hashi2 = Hash.new
nu = []
check(hashi,source,hashi2)
hashi2.each_key do |key|
return true if key == destination 
end
return false
    
end