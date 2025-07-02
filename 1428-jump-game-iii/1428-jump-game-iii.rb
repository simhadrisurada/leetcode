# @param {Integer[]} arr
# @param {Integer} start
# @return {Boolean}
def can_reach(arr, start)
queue = [start]
hash = Hash.new
    while queue.length != 0
        n = queue[0]
        return true if arr[n] == 0
        n1 = n + arr[n]
        n2 = n - arr[n]
        hash[n] = 0
        queue.delete_at(0) 
        if n1 >= 0 && n1 < arr.length && hash[n1] == nil
            queue.push(n1)
        end 
        if n2 >= 0 && n2 < arr.length && hash[n2] == nil
            queue.push(n2)
        end      
    end
    return false
end