# @param {Integer[]} cost
# @return {Integer[]}
def min_costs(cost)
    
i = 0 
min = cost[i]
while i < cost.length
min = cost[i] if min > cost[i]
cost[i] = min 
i+=1
end
return cost
end