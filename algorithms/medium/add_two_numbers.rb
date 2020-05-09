# frozen_string_literal: true

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  a1 = list_to_i(l1)
  a2 = list_to_i(l2)
  result = a1 + a2
  result.to_s.reverse.chars.map(&:to_i)
end

private def list_to_i(list)
  result = ''
  until list.nil?
    result = list.val.to_s + result
    list = list.next
  end
  result.to_i
end
