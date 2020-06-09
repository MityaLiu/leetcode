# frozen_string_literal: true

# @param {Integer[]} a
# @return {Integer}
def largest_perimeter(a)
  a.sort!.reverse!

  sides = []

  a.each_cons(3) do |subarray|
    if triangle(subarray)
      sides = subarray
      break
    end
  end

  sides.sum
end

private def triangle(sides)
  sides[0] < sides[1] + sides[2]
end
