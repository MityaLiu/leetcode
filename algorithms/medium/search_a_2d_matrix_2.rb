# frozen_string_literal: true

# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
  matrix.any? { |row| row.include?(target) }
end
