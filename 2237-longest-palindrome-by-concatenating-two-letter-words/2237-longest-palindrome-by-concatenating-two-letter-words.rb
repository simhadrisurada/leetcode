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
if hash[words[i].reverse] != nil && hash[words[i].reverse] != 0 && hash[words[i]] != 0 && words[i] != words[i].reverse
hash[words[i].reverse] -= 1
hash[words[i]] -= 1
c+=4
elsif hash[words[i]] > 1 && words[i] == words[i].reverse
hash[words[i]] -= 2
c+=4
elsif hash[words[i]] == 1 && words[i] == words[i].reverse
flag = 1
end
i+=1
end
c+= 2 if flag == 1 
    return c
end