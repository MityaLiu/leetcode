# frozen_string_literal: true

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} root
# @param {Integer} k
# @return {ListNode[]}
def split_list_to_parts(root, k)
  result = []
  k.times do
    result << []
  end

  length = calculate_length(root).to_f
  i = 0

  while length > 0
    list_size = (length / (k - i)).ceil
    length -= list_size

    list_size.times do
      result[i] << root.val
      root = root.next
    end

    i += 1
  end

  result
end

private def calculate_length(head)
  i = 0
  until head.nil?
    i += 1
    head = head.next
  end
  i
end
