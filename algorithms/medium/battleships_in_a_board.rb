# frozen_string_literal: true

# @param {Character[][]} board
# @return {Integer}
def count_battleships(board)
  return 0 if board.empty?

  m = board.size
  n = board[0].size

  result = 0
  ships = {}

  (m * n).times do |ij|
    next if ships[ij]

    i, j = ij.divmod(n)

    next if board[i][j] != 'X'

    q = [ij]

    until q.empty?
      coordinate = q.shift
      next if ships[coordinate]

      x, y = coordinate.divmod(n)
      q << coordinate - n if     x > 0 && board[x - 1][y] == 'X'
      q << coordinate + n if x + 1 < m && board[x + 1][y] == 'X'
      q << coordinate - 1 if     y > 0 && board[x][y - 1] == 'X'
      q << coordinate + 1 if y + 1 < n && board[x][y + 1] == 'X'

      ships[coordinate] = true
    end

    result += 1
  end

  result
end
