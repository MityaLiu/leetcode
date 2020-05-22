# frozen_string_literal: true

# @param {Integer[][]} matrix
# @return {Integer[]}
def lucky_numbers(matrix)
  matrix.each_with_object([]) do |row, result|
    min = row.min
    row.each_with_index do |v, j|
      result << v if v == min && v == max(matrix, j)
    end
  end
end

private def max(matrix, j)
  matrix.map { |row| row[j] }.max
end
