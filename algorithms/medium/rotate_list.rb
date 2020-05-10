# frozen_string_literal: true

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} k
# @return {ListNode}
def rotate_right(head, k)
  return head if head&.next.nil?

  arr = convert_list_to_array(head)
  arr.rotate!(-k)

  convert_array_to_list(arr, head)
end

private def convert_list_to_array(head)
  result = []
  until head.nil?
    result << head.val
    head = head.next
  end
  result
end

private def convert_array_to_list(arr, head)
  arr.each do |el|
    head.val = el
    head = head.next
  end
end
