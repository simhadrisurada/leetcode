# @param {Integer[]} arr
# @return {Integer}
def min_jumps(arr)
step_3 = Hash.new
i = 0
    while i < arr.length
        if step_3[arr[i]] == nil
            step_3[arr[i]] = [0,[i]]
        else
            step_3[arr[i]][1].push(i)
        end
    i+=1
    end
puts step_3
queue = [0]
hash = Hash.new
hash[0] = 0

j = 0
    while queue.length != 0
        n = queue.length
        i = 0 
        while i < n
            now = queue[0]
            return j  if now == arr.length - 1
            while step_3[arr[now]][0] < step_3[arr[now]][1].length
                if hash[step_3[arr[now]][1][step_3[arr[now]][0]]] == nil
                    queue.push(step_3[arr[now]][1][step_3[arr[now]][0]]) 
                    hash[step_3[arr[now]][1][step_3[arr[now]][0]]] = 0
                end
            step_3[arr[now]][0]+=1
            end
                n1 = now+1
                n2 = now - 1
            if n1 >=0 && n1 < arr.length && hash[n1] == nil
                hash[n1] = 0 
                queue.push(n1)
            end
            if n2 >=0 && n2 < arr.length && hash[n2] == nil
                hash[n2] = 0 
                queue.push(n2)
            end
     
        queue.delete_at(0)
        i+=1    
        end
    j+=1   
    end

    
end