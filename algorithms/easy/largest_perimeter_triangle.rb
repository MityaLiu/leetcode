# frozen_string_literal: true

# @param {Integer[]} a
# @return {Integer}
def largest_perimeter(a)
  a.sort!.reverse!
  size = a.size

  sides = []

  (0..size - 3).each do |i|
    if triangle(a[i..i + 2])
      sides = a[i..i + 2]
      break
    end
  end

  sides.sum
end

private def triangle(sides)
  sides[0] < sides[1] + sides[2]
end
