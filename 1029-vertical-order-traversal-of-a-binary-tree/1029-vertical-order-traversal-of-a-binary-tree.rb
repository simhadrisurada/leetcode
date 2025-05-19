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
def vertical_traversal(root)
return [] if root == nil
hash = Hash.new
nu = []
queue = []
queue.push([root,0,0])
j = 0
while queue.length != 0
    len = queue.length
    k = []
    i = 0
    while i < len
        node = queue[0]
        queue.delete_at(0)
        queue.push([node[0].right,node[1] + 1,j+1]) if node[0].right != nil
        queue.push([node[0].left,node[1] - 1,j+1]) if node[0].left != nil
        if hash[[node[2],node[1]]] == nil
            hash[[node[2],node[1]]] = [node[0].val]
        else
            hash[[node[2],node[1]]].push(node[0].val)
        end
    i+=1
    end

j+=1
end
nu = Hash.new
hash.each_key do|key|
if nu[key[1]] == nil
nu[key[1]] = hash[key].sort
else
nu[key[1]] += hash[key].sort
end
end
nuu = []
nu.each_key do|key|
nuu.push(key)
end
nuu = nuu.sort
nuu1 = []
i = 0
while i < nuu.length
nuu1.push(nu[nuu[i]])
i+=1
end


    return nuu1
end