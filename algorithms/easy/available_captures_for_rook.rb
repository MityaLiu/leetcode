# frozen_string_literal: true

# @param {Character[][]} board
# @return {Integer}
def num_rook_captures(board)
  j = board.index { |row| row.include?('R') }
  i = board[j].index('R')

  r = board[j]
  c = board.map { |row| row[i] }

  possible_moves = [r[0...i].reverse, r[i + 1..-1], c[0...j].reverse, c[j + 1..-1]]

  possible_moves.count { |arr| can_capture?(arr) }
end

private def can_capture?(arr)
  (arr - ['.'])[0] == 'p'
end
