# @param {String[]} words
# @param {Character} x
# @return {Integer[]}
def check(word,x)
i = 0 
while i < word.length
return true if word[i] == x
i+=1
end
return false
end
def find_words_containing(words, x)
nu = []
i = 0 
while i < words.length
 nu.push(i) if check(words[i],x) == true 
i+=1
end
return nu
end