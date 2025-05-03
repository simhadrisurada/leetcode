# @param {Integer[]} target
# @param {Integer} n
# @return {String[]}
def build_array(target, n)
push = "Push"
pop = "Pop"
stack = []
i = 1
j = 0
    while i <= n && j < target.length 
        stack.push(push)
        if i == target[j]
            j+=1 
        else
            stack.push(pop)
        end 
    i+=1
    end
    return stack
end