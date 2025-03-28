# @param {Character[][]} grid
# @return {Integer}

def check(hash1,key,hash2)
i = 0
u = 0
while i < hash1[key].length
if hash2[hash1[key][i]] == nil
 hash2[hash1[key][i]] = 0
 check(hash1,hash1[key][i],hash2)
end
i+=1
end

end

def num_islands(grid)
hash = Hash.new
    i = 0 
    while  i < grid.length
        j = 0
        while j < grid[i].length
            hash[[i,j]] = [] if grid[i][j] == "1"
        j+=1
        end
    i+=1
    end
    hash.each_key do|key|
    nu = key 
    hash[key].push([nu[0]-1,nu[1]]) if hash[[nu[0]-1,nu[1]]] != nil
    hash[key].push([nu[0],nu[1]+1]) if hash[[nu[0],nu[1]+1]] != nil
    hash[key].push([nu[0],nu[1]-1]) if hash[[nu[0],nu[1]-1]] != nil
    hash[key].push([nu[0]+1,nu[1]]) if hash[[nu[0]+1,nu[1]]] != nil   
    end

ans = 0
hash.each_key do|key|
    hash2 = Hash.new
check(hash,key,hash2)
ans+=1
hash2.each_key do|key|
hash.delete(key)
end
end


    return ans
end