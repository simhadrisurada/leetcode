# @param {Integer[]} arr
# @param {Integer} k
# @param {Integer} x
# @return {Integer[]}
def pos(n,m)
return n-m if n>m
return m-n
end
def find_closest_elements(arr, k, x)
    arr = arr.sort
    arr1 = []
    i = 0
    while i < arr.length
    arr1.push([pos(arr[i],x),arr[i]])
    i+=1
    end
arr1 = arr1.sort
arr2 = []
    i = 0
    while i < k
     arr2.push(arr1[i][1])
    i+=1
    end
    return arr2.sort
end