# @param {Integer[]} answers
# @return {Integer}
def num_rabbits(answers)
answers = answers.sort
count=+1
ans = 0
i = 1 
while i < answers.length
if answers[i] != answers[i-1]
n = 0
n = answers[i-1] + 1 if count%(answers[i-1]+1) != 0
ans += (((count/(answers[i-1] + 1))*(answers[i-1] + 1)) + n)
puts ans
count=1
else
count+=1
end
i+=1
end
n = 0
n = answers[i-1] + 1 if count%(answers[i-1]+1) != 0
ans += (((count/(answers[i-1] + 1))*(answers[i-1] + 1)) + n)

    return ans
end