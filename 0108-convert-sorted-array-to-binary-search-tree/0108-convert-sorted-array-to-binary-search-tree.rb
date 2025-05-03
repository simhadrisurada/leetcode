# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer[]} nums
# @return {TreeNode}
def check(nu,data)
return 0 if nu == nil
if nu.val > data
no = TreeNode.new
n = check(nu.left,data)
    if n == 0
        nu.left = no
        no.val = data
    end
elsif nu.val < data
n = check(nu.right,data)
    no = TreeNode.new
    if n == 0
        nu.right = no
        no.val = data
    end
end
return 1
end
def now(nu,nums,i,j)
return if i == j
check(nu,nums[(i+j)/2])
now(nu,nums,i,(i+j)/2)
now(nu,nums,(i+j)/2+1,j)
end
def sorted_array_to_bst(nums)
nu = TreeNode.new
nu.val = nums[nums.length/2]
now(nu,nums,0,(nums.length)/2)
now(nu,nums,(nums.length)/2+1,nums.length)

    return nu
end