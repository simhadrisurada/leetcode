# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} k
# @return {ListNode}
$dumm1 = nil
$dummy2 = nil
def reverse(head,i,tar)
if head.next == nil || tar == i
$dummy1 = head
$dummy2 = head.next
return head
end
temp = reverse(head.next,i+1,tar)
head.next = nil
temp.next = head
return head
end

def head_len(head,len)
return len if head == nil
return head_len(head.next,len+1)
end

def reverse_k_group(head, k)
if k == 1 || head == nil
return head
end
head_size = head_len(head,0)
    n3 = reverse(head,1,k)
    n1 = $dummy1
    $dummy1 = nil
    n2 = $dummy2
    $dummy2 = nil 
    ans = n1
    i = 1
    puts head_size
    while n2 != nil && i < head_size/k
    last = reverse(n2,1,k)
    n1 = $dummy1
    $dummy1 = nil
    n2 = $dummy2
    $dummy2 = nil 
    n3.next = n1
    n3 = last
    i+=1
    end
    n3.next = n2
    return ans
end