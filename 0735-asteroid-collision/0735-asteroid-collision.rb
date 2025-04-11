# @param {Integer[]} asteroids
# @return {Integer[]}
def asteroid_collision(asteroids)

stack = []
    i = 0
    while i < asteroids.length
        if stack.length == 0 || asteroids[i] > 0 
        stack.push(asteroids[i])
        elsif asteroids[i] < 0
            flag = 0
            while stack.length != 0 && stack.last + asteroids[i] <= 0 && stack.last > 0
                if stack.last + asteroids[i] == 0
                    stack.pop
                    flag = 1
                    break
                end
                stack.pop
            end
            if (stack.length == 0 || stack.last < 0 )&& flag != 1
            stack.push(asteroids[i])
            end
        end
    i+=1
    end
return stack

    
end