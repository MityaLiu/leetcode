# frozen_string_literal: true

# @param {Integer[]} height
# @return {Integer}
def trap(height)
  size = height.size - 1
  prev = height[0]
  prev_index = 0
  water = 0
  temp = 0

  (1..size).each do |i|
    if height[i] >= prev
      prev = height[i]
      prev_index = i
      temp = 0
    else
      water += prev - height[i]
      temp += prev - height[i]
    end
  end

  if prev_index < size
    water -= temp
    prev = height[size]

    size.downto(prev_index).each do |i|
      if height[i] >= prev
        prev = height[i]
      else
        water += prev - height[i]
      end
    end
  end

  water
end
