# frozen_string_literal: true

# @param {Integer[][]} matrix
# @return {Integer}
def count_squares(matrix)
  m = matrix.size
  n = matrix[0].size

  m.times.sum do |j|
    n.times.sum do |i|
      if !matrix[j][i].zero? && j.positive? && i.positive?
        matrix[j][i] += [matrix[j-1][i], matrix[j-1][i-1], matrix[j][i-1]].min
      end

      matrix[j][i]
    end
  end
end
