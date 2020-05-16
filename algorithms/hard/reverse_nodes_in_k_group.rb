# frozen_string_literal: true

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
def reverse_k_group(head, k)
  k -= 1
  return head if k.zero?

  dummy = ListNode.new(0)
  tail = dummy

  fast = head
  slow = head
  while fast
    k.times { fast && fast = fast.next }
    break if fast.nil?

    curr = slow
    prev = nil
    while prev != fast
      curr_next = curr.next
      curr.next = prev
      prev = curr
      curr = curr_next
    end

    tail.next = fast
    tail = slow

    fast = curr
    slow = curr
  end
  tail.next = slow

  dummy.next
end
