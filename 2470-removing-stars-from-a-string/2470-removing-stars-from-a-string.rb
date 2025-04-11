# @param {String} s
# @return {String}
def remove_stars(s)
stack = []
i=0
    while i < s.length
        if stack.length == 0 || s[i] != '*'
        stack.push(s[i])
        elsif  stack.length != 0 && stack.last != '*'
        stack.pop
        end
    i+=1
    end
return stack.join
    
end