# @param {Integer[]} temperatures
# @return {Integer[]}
def daily_temperatures(temperatures)
nu = [-1]*temperatures.length
stack = []
i = 0 
while i < temperatures.length 
if stack.length == 0 || temperatures[stack.last] >= temperatures[i]
stack.push(i)
elsif temperatures[stack.last] < temperatures[i]
    while stack.length != 0 && temperatures[stack.last] < temperatures[i]
    nu[stack.last] = i - stack.last
    stack.pop
    end
    stack.push(i)
end
i+=1
end
i = 0
while i < nu.length
nu[i] = 0 if nu[i] == -1
i+=1
end
return nu
    
end