# frozen_string_literal: true

# @param {Integer[][]} matrix
# @return {Boolean}
def is_toeplitz_matrix(matrix)
  y_size = matrix.size
  x_size = matrix[0].size

  (x_size + y_size - 1).times.all? do |i|
    Array.new(y_size) do |y|
      x = i + y - y_size + 1
      x < 0 ? nil : matrix[y][x]
    end.compact.uniq.size == 1
  end
end

#     [1,2,3,4],
#   [5,1,2,3],
# [9,5,1,2]
