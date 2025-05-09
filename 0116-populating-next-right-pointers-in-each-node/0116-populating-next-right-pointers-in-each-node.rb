# Definition for Node.
# class Node
#     attr_accessor :val, :left, :right, :next
#     def initialize(val)
#         @val = val
#         @left, @right, @next = nil, nil, nil
#     end
# end

# @param {Node} root
# @return {Node}
def connect(root)
return root if root == nil
queue = [root]
    while queue.length != 0
        n = queue.length
        nu2 = []
        i = 0
            while i < n
                nu = queue[0]
                queue.delete_at(0)
                queue.push(nu.left) if nu.left != nil
                queue.push(nu.right) if nu.right != nil
                nu2.push(nu)
                i+=1
            end
            i = 0
            while i < n - 1
                nu2[i].next = nu2[i+1]
            i+=1
            end
            nu2[-1].next = nil
    end
    return root
end