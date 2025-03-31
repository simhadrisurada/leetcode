# @param {Integer[]} heights
# @return {Integer}
def largest_rectangle_area(heights)
stack = []
hash = []
i = 0
max = 0
while i < heights.length
    if stack.length == 0 || stack.last[0] <= heights[i]
        stack.push([heights[i],i]) 

    elsif stack.last[0] > heights[i]
        n = stack.last[1]
        while stack.length != 0 && stack.last[0] > heights[i]
            hash.push(stack.last)
            n = stack.last[1]
            if max < (i - stack.last[1])*stack.last[0]
                max = (i - stack.last[1])*stack.last[0] 
            end
        stack.pop
        end
        if stack.length == 0 || stack.last[0] < heights[i]
            stack.push([heights[i],n]) 
        end
    end
i+=1
end
i = 0 
while i < stack.length
    if max < (heights.length - stack[i][1])*stack[i][0]
    max =  (heights.length - stack[i][1])*stack[i][0]
    end
i+=1
end


return max
    
end