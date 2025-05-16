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
# @param {Integer} val
# @param {Integer} depth
# @return {TreeNode}
def make(val)
ne = TreeNode.new
ne.val = val
ne.left = nil
ne.right = nil
return ne
end
def len(root,c)
return c if root == nil
n1 = len(root.left,c+1)
n2 = len(root.right,c+1)
return [n1,n2].max
end
def add_one_row(root, val, depth)
if depth == 1
node = make(val)
node.left = root
return node
end
size = len(root,0)
n = 0
queue = [root]
nu = []
while queue.length != 0 && n != depth - 1
len = queue.length
i = 0
nu = []
while i < len
node = queue[0]
queue.delete_at(0)
if node.left != nil
queue.push(node.left)
end
if node.right != nil
queue.push(node.right)
end
nu.push(node)
i+=1
end
n+=1
end
    while nu.length != 0
    node = nu[0]
    dummy = node.left
    node.left = make(val)
    nody = node.left
    nody.left = dummy
    dummy = node.right
    node.right = make(val)
    node = node.right
    node.right  = dummy
    nu.delete_at(0)
    end

  return root
end