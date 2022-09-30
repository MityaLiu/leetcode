# frozen_string_literal: true

# @param {Integer} num
# @return {String[]}
def read_binary_watch(num)
  res = []

  12.times do |i|
    60.times do |j|
      res << format('%d:%02d', i, j) if num == popcount(i) + popcount(j)
    end
  end

  res
end

private def popcount(v)
  v.to_s(2).count('1')
end
