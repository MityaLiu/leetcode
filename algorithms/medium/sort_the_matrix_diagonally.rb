# frozen_string_literal: true

# @param {Integer[][]} mat
# @return {Integer[][]}
def diagonal_sort(mat)
  m = mat.size

  m.times { |j| mat[j] = Array.new(m - 1 - j) + mat[j] + Array.new(j) }

  n = mat[0].size

  n.times do |i|
    col = mat.map { |row| row[i] }.compact.sort
    mat.each_with_index { |row, j| mat[j][i] = col.shift if row[i] }
  end

  mat.each(&:compact!)

  mat
end
