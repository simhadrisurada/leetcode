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
# @return {Integer[][]}

def level_order_bottom(root)
return [] if root == nil
nu = []
queue = []
queue.push(root)
while queue.length != 0
len = queue.length
k = []
i = 0
while i < len
node = queue[0]
queue.delete_at(0)
queue.push(node.left) if node != nil && node.left !=nil
queue.push(node.right) if node != nil && node.right !=nil
k.push(node.val) if node !=nil
i+=1
end
nu.push(k)
end

return nu.reverse
    
end