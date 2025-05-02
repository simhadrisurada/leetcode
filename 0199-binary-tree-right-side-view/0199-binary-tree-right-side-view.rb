# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer[]}
def right_side_view(root)
return [] if root == nil
nu2 = []
queue = [root]
while queue.length != 0
n = queue.length
nu1 = []
i = 0
while i < n
nu = queue[0]
queue.delete_at(0)
queue.push(nu.left) if nu.left != nil
queue.push(nu.right) if nu.right != nil
nu1.push(nu.val)
i+=1
end
nu2.push(nu1[-1])
end
   return nu2 
end