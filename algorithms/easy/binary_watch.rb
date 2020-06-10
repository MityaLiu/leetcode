# frozen_string_literal: true

# @param {Integer} num
# @return {String[]}
def read_binary_watch(num)
  res = []

  (0..11).each do |i|
    (0..59).each do |j|
      res << format('%d:%02d', i, j) if num == popcount(i) + popcount(j)
    end
  end

  res
end

private def popcount(v)
  v.to_s(2).count('1')
end
