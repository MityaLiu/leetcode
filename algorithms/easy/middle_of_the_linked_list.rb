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
def middle_node(head)
  len = find_length(head)
  mid = len / 2
  i = 0

  while i < mid
    head = head.next
    i += 1
  end

  head
end

private def find_length(head)
  a = head
  i = 0

  while a
    a = a.next
    i += 1
  end

  i
end
