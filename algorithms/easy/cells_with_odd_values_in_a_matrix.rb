# frozen_string_literal: true

# @param {Integer} n
# @param {Integer} m
# @param {Integer[][]} indices
# @return {Integer}
def odd_cells(n, m, indices)
  matrix = Array.new(n) { Array.new(m, 0) }

  indices.each do |ri, ci|
    m.times { |i| matrix[ri][i] += 1 }
    n.times { |j| matrix[j][ci] += 1 }
  end

  matrix.flatten.count(&:odd?)
end
