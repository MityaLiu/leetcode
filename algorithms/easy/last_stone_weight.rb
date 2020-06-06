# frozen_string_literal: true

# @param {Integer[]} stones
# @return {Integer}
def last_stone_weight(stones)
  stones.sort!

  while stones.size > 1
    x, y = stones.pop(2)
    new_stone = x == y ? nil : y - x

    if new_stone
      index = stones.index { |v| v > new_stone } || stones.size
      stones.insert(index, new_stone)
    end
  end

  stones.first || 0
end
