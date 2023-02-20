# frozen_string_literal: true

# @param {Character[][]} board
# @param {String} word
# @return {Boolean}
def exist(board, word)
  return false if board.nil? || board.empty? || board[0].empty?

  chars = word.chars

  (0...board.length).each do |x|
    (0...board[x].length).each do |y|
      return true if dfs(board, x, y, chars, 0)
    end
  end

  false
end

private def dfs(board, x, y, chars, i)
  return true if i == chars.length
  return false if x < 0 || y < 0 || x == board.length || y == board[x].length
  return false if board[x][y] != chars[i]

  board[x][y] += '^'

  exist = dfs(board, x + 1, y, chars, i + 1) ||
    dfs(board, x, y + 1, chars, i + 1) ||
    dfs(board, x - 1, y, chars, i + 1) ||
    dfs(board, x, y - 1, chars, i + 1)

  board[x][y].delete!('^')

  exist
end
