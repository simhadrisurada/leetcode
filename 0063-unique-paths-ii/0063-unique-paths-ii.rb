# @param {Integer[][]} obstacle_grid
# @return {Integer}
def unique_paths_with_obstacles(nums)
return 0 if  nums[0][0] == 1
    i = 0
    while i < nums.length
        j = 0 
        while j < nums[i].length
        if i == 0 && j == 0
            nums[i][j] = 1
        elsif nums[i][j] == 1 
            nums[i][j] = -1
        else
            if i > 0 && nums[i-1][j] >= 0
                nums[i][j] += nums[i-1][j]
            end
            if j > 0 && nums[i][j - 1] >= 0 
                nums[i][j] += nums[i][j - 1]
            end
        end
        j+=1
        end
    i+=1
    end
return 0 if nums[-1][-1] == -1 
return nums[-1][-1]
    
end