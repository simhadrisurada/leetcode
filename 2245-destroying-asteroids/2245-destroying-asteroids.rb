# @param {Integer} mass
# @param {Integer[]} asteroids
# @return {Boolean}
def asteroids_destroyed(mass, asteroids)
asteroids = asteroids.sort
i = 0
    while i < asteroids.length 
        if asteroids[i] > mass
            return false
        else
            mass+=asteroids[i]
        end
    i+=1
    end
    return true    
end