# @param {Integer[][]} grid
# @return {Integer}
def fill(hash,grid,i,j)
queue = [[i,j]]
hash[[i,j]]= 0
ans = 0
while queue.length != 0
n = queue.length
    k = 0
    while k < n
    a,b = queue[0]
    hash[[a,b]] = 0
    puts [a,b].inspect 
    ans+=1
     if a + 1 < grid.length && grid[a+1][b] == 1 && hash[[a+1,b]] == nil
     queue.push([a+1,b])
     hash[[a+1,b]] = 0
     end
     if a - 1 >= 0 && grid[a - 1][b] == 1 && hash[[a-1,b]] == nil
     queue.push([a-1,b])
     hash[[a-1,b]] = 0
     end
    if b + 1 < grid[0].length && grid[a][b + 1] == 1 && hash[[a,b + 1]] == nil
    queue.push([a,b+1]) 
    hash[[a,b + 1]] = 0
    end
    if b - 1 >= 0 && grid[a][b - 1] == 1 && hash[[a,b - 1]] == nil
    queue.push([a,b-1])
    hash[[a,b - 1]] = 0
    end
    k += 1
    queue.delete_at(0)
    end
     
end
return ans
end
def max_area_of_island(grid)
hash = Hash.new
nu = [0]
i = 0
while i < grid.length
    j = 0
    while j < grid[i].length
        if hash[[i,j]] == nil && grid[i][j] == 1
            nu.push(fill(hash,grid,i,j))
            
        end
    j+=1
    end
i+=1
end

return nu.max


    
end