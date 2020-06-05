# frozen_string_literal: true

# @param {Integer[]} heights
# @return {Integer}
def height_checker(heights)
  sorted = heights.sort

  heights.each_with_index.count { |h, i| h != sorted[i] }
end
