# @param {Integer[]} nums
# @param {Integer} lower
# @param {Integer} upper
# @return {Integer}
######################## binary search for finding current element to elemenate in the sorted array !######################
def bin_1(arr,target)
low = 0
high = arr.length - 1
    while low <= high
        mid = (low+high)/2
        return mid if arr[mid] == target
        if arr[mid] > target
            high = mid-1 
        elsif arr[mid] < target
            low = mid+1 
        end
    end
return -1
end
#############################################################################################################################
#################### to find the left range for the current element in the sorted array #####################################
def bin_2(arr,target)
low = 0
high = arr.length - 1
    while low <= high
        mid = (low+high)/2
        if arr[mid] >= target
            high = mid-1 
        elsif arr[mid] < target
            low = mid+1 
        end
    end
return high,low
end
#############################################################################################################################
#################### to find the right range for the current element in the sorted array #####################################
def bin_3(arr,target)
low = 0
high = arr.length - 1
    while low <= high
        mid = (low+high)/2
        if arr[mid] > target
            high = mid-1 
        elsif arr[mid] <= target
            low = mid+1 
        end
    end
return high,low
end
#############################################################################################################################

def count_fair_pairs(nums, lower, upper)
arr = nums.sort
i = 0
count = 0
while i < nums.length - 1
ind = bin_1(arr,nums[i])
k = nums[i]
arr.delete_at(ind)
count +=  bin_2(arr,lower - k)[0] - bin_3(arr,upper - k)[1] + 1
i+=1
end 
return count*-1
end