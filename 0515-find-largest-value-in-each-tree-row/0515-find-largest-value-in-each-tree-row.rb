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
def largest_values(root)
return [] if root == nil
queue = [root]
i = 0
ans = []
    while queue.length != 0
        len = queue.length
        i = 0 
        arr = 0
            while i < len
                nu = queue[0]
                queue.delete_at(0)
                arr = nu.val if i == 0
                if nu.left != nil
                    queue.push(nu.left)
                end
                if nu.right != nil
                    queue.push(nu.right)
                end
                arr = nu.val if arr < nu.val
                i+=1
            end
        ans.push(arr)
    end
return ans
    
end