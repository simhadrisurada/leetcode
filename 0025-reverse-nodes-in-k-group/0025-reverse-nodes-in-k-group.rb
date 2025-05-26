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
################function for reversing the linked list in group wise ######################
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
##################################################
#############  for finding the length  ##############
def head_len(head,len)
return len if head == nil
return head_len(head.next,len+1)
end
######################################################
def reverse_k_group(head, k)
###### edge case ####################
if k == 1 || head == nil
return head
end
#####################################
#### for the length ##########
head_size = head_len(head,0)
#############################
######### for finding the answer the head ######################
    n3 = reverse(head,1,k)
    n1 = $dummy1
    $dummy1 = nil
    n2 = $dummy2
    $dummy2 = nil 
    ans = n1#### head of answer 
################################################################
################# "i" is to make changes on exactly group wise  as per condition ################
    i = 1
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
##################################################################################################
    n3.next = n2 #### for linking the last unconditional group ##############
    return ans ############ yasss we got it ################ |:)|
end