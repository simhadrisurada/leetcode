# @param {Integer[][]} questions
# @return {Integer}
def check(nu,store,ind)
return 0 if ind >= nu.length
return store[ind] if store[ind] != -1
leave = check(nu,store,ind+1)
use = nu[ind][0] + check(nu,store,ind+1+nu[ind][1])
return store[ind] = [leave,use].max
end
def most_points(questions)
return check(questions,[-1]*questions.length,0)
end