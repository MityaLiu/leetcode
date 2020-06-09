# frozen_string_literal: true

# @param {Integer} n
# @param {Integer[][]} trust
# @return {Integer}
def find_judge(n, trust)
  degrees = Array.new(n, 0)

  trust.each do |a, b|
    degrees[a - 1] -= 1
    degrees[b - 1] += 1
  end

  index = degrees.index { |v| v == n - 1 }

  index ? index + 1 : -1
end
