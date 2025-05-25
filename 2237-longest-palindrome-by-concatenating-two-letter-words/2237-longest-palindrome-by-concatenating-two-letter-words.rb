# @param {String[]} words
# @return {Integer}
def longest_palindrome(words)
hash = Hash.new
i = 0 
while i < words.length 
if hash[words[i]] == nil
hash[words[i]] = 1
else
hash[words[i]] += 1
end
i+=1
end
i =0 
c = 0
flag = 0
while i < words.length
rev  = words[i].reverse
if hash[rev] != nil && hash[rev] != 0 && hash[words[i]] != 0 && words[i] != rev
hash[rev] -= 1
hash[words[i]] -= 1
c+=4
elsif hash[words[i]] > 1 && words[i] == rev
hash[words[i]] -= 2
c+=4
elsif hash[words[i]] == 1 && words[i] == rev
flag = 1
end
i+=1
end
c+= 2 if flag == 1 
    return c
end