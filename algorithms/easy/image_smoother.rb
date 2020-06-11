# frozen_string_literal: true

# @param {Integer[][]} m
# @return {Integer[][]}
def image_smoother(m)
  height = m.size
  width = m[0].size

  Array.new(height) do |y|
    Array.new(width) { |x| smooth(m, y, x, height, width) }
  end
end

private def smooth(m, y, x, height, width)
  coords = [
    [y - 1, x - 1], [y - 1, x], [y - 1, x + 1],
    [y, x - 1], [y, x], [y, x + 1],
    [y + 1, x - 1], [y + 1, x], [y + 1, x + 1]
  ].select { |j, i| (0...height).cover?(j) && (0...width).cover?(i) }

  coords.sum { |j, i| m[j][i] } / coords.size
end
