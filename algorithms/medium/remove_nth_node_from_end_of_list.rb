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
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
  return [] unless head&.next

  length = find_length(head)
  a = head
  previous = nil
  i = 0

  while i < length - n && a.next
    previous = a
    a = a.next
    i += 1
  end

  if previous
    previous.next = a.next
  else
    head = head.next
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
