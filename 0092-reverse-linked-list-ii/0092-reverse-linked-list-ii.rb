# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} left
# @param {Integer} right
# @return {ListNode}
$ans = nil
$back = nil
def reverse(now,i,j)
if i >= j || now.next == nil
$ans = now
$back =now.next
now.next  = nil
return now
end
n1 = reverse(now.next,i+1,j)
now.next = nil
n1.next = now 
return now
end
def reverse_between(head, left, right)
 i = 0
 now = head
 att1 = nil
 while i < left - 1
 att1 = head
head = head.next
    i+=1
 end
 n1 = reverse(head,left,right)
 ans = $ans
 back =$back
 $ans,$back = nil,nil
 n1.next = back
 if left == 1
    return ans
 end
att1.next = ans
 return now
end