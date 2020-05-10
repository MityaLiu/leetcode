# frozen_string_literal: true

# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  left = 0
  right = height.size - 1
  max_capacity = 0

  while left < right
    h1 = height[left]
    h2 = height[right]
    w = right - left
    h = 0

    if h1 < h2
      left += 1
      h = h1
    else
      right -= 1
      h = h2
    end

    capacity = h * w
    max_capacity = capacity if capacity > max_capacity
  end

  max_capacity
end
