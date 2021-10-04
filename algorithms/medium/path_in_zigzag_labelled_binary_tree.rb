# frozen_string_literal: true

# @param {Integer} label
# @return {Integer[]}
def path_in_zig_zag_tree(label)
  level = -1
  count = 0
  result = []

  while label > count
    level += 1
    count += 2**level
  end

  while level >= 0
    result.unshift(label)

    min = 2**level
    max = (2**(level + 1)) - 1

    reversed_label = min + max - label

    label = reversed_label / 2

    level -= 1
  end

  result
end
