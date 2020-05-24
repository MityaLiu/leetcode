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
# @return {ListNode}
def reverse_list(head)
  tail = head
  tail = tail.next while tail&.next

  switch(head, tail) if head != tail

  tail
end

private def switch(left, right, previous_left = nil)
  return if left == right

  previous_right = left

  previous_right = previous_right.next while previous_right.next != right

  previous_left.next = right if previous_left
  previous_right.next = left

  right.next, left.next = left.next, right.next

  switch(right.next, previous_right, right)
end
