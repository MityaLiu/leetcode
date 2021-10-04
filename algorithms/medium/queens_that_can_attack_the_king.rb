# frozen_string_literal: true

# @param {Integer[][]} queens
# @param {Integer[]} king
# @return {Integer[][]}
def queens_attackthe_king(queens, king)
  horizontal_queens = queens.select { |q| q[0] == king[0] }
  vertical_queens = queens.select { |q| q[1] == king[1] }
  diagonal_queens1 = queens.select { |q| q[0] - king[0] == q[1] - king[1] }
  diagonal_queens2 = queens.select { |q| q[0] - king[0] == king[1] - q[1] }

  q1 = select_queen(horizontal_queens, king) { |q| q[1] > king[1] }
  q2 = select_queen(horizontal_queens, king) { |q| q[1] < king[1] }
  q3 = select_queen(vertical_queens, king) { |q| q[0] > king[0] }
  q4 = select_queen(vertical_queens, king) { |q| q[0] < king[0] }
  q5 = select_queen(diagonal_queens1, king) { |q| q[0] > king[0] }
  q6 = select_queen(diagonal_queens1, king) { |q| q[0] < king[0] }
  q7 = select_queen(diagonal_queens2, king) { |q| q[0] > king[0] }
  q8 = select_queen(diagonal_queens2, king) { |q| q[0] < king[0] }

  [q1, q2, q3, q4, q5, q6, q7, q8].compact
end

private def select_queen(arr, king, &block)
  arr.select(&block).min_by { |q| sqr_distance(q, king) }
end

private def sqr_distance(p1, p2)
  ((p2[0] - p1[0])**2) + ((p2[1] - p1[1])**2)
end
