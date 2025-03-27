# @param {Integer} n
# @return {Integer}

def check(n,ans)
return ans if n == 0
return check((n/5),ans + (n/5));
end
def trailing_zeroes(n)

return check(n,0)
end