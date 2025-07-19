# @param {String} s
# @return {String}
def run(str,i,j)
    while i >= 0 && j < str.length
        if str[i] != str[j]
        break
        end
    j+=1
    i-=1
    end
    return j-i - 1
end
def longest_palindrome(s)
return s if s.length == 1
    i = 0
    max = 0
    ans = ""
        while i < s.length
            m = [run(s,i-1,i+1),run(s,i,i+1)].max
            if m > max
                max = m
                if max%2 == 0
                ans = s[i + 1 - (max/2),m]
                else
                ans = s[i  - (max/2),m]
                end
               
            end
        i+=1
        end
    return ans
end