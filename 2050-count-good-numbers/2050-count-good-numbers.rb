# @param {Integer} n
# @return {Integer}
def count_good_numbers(n)
 return 20.pow(n/2,10**9 + 7) if n%2 == 0
 return (20.pow(n/2,10**9 + 7)*5.pow(1,10**9 + 7))%((10**9) + 7)
end