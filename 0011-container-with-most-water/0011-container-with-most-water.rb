# @param {Integer[]} height
# @return {Integer}
def max_area(heights)

max = 0 
p1 = 0
p2 = heights.length - 1
nu = []
while p1 < p2
max = (p2-p1)*([heights[p1],heights[p2]].min) if max < (p2-p1)*([heights[p1],heights[p2]].min)
if heights[p1] > heights[p2]
p2-=1
else
p1+=1
end
end



    return max
end