# @param {Integer[][]} grid
# @param {Integer} x
# @return {Integer}
def abs(m,n)
return m-n if m - n >= 0
return n-m
end
def part1(ans,grid)

abs_ans =0
i = 0
while i < grid.length
    j = 0
    while j < grid[i].length
    abs_ans+=abs(grid[i][j],ans)
    j+=1
    end
i+=1
end
return abs_ans
end
def min_operations(grid, x)
i = 0
ans = 0
nu = []
k = 0
n = grid[0][0]%x
while i < grid.length
    j = 0
    while j < grid[i].length
        if n != grid[i][j]%x
            return -1 
        else
            grid[i][j]-=n
            grid[i][j]/=x
           nu[k] = grid[i][j]
           k+=1
            end
        j+=1
    end
    i+=1
end
nu = nu.sort 


return part1(nu[nu.length/2],grid)

end