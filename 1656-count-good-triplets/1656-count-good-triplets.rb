# @param {Integer[]} arr
# @param {Integer} a
# @param {Integer} b
# @param {Integer} c
# @return {Integer}
def absu(n,m)
return n - m if n > m
return m-n
end
def count_good_triplets(arr, a, b, c)
ans = 0
i = 0 
while i < arr.length
j = i+1
while j < arr.length
k = j+1
while k < arr.length
ans += 1 if absu(arr[i],arr[j]) <= a && absu(arr[j],arr[k]) <= b && absu(arr[i],arr[k]) <= c
k+=1
end
j+=1
end
i+=1
end
return ans  
end