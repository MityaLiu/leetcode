# frozen_string_literal: true

# @param {String} tiles
# @return {Integer}
def num_tile_possibilities(tiles)
  return tiles.size if tiles.size < 2

  frequencies = Hash.new(0)

  tiles.each_char { |c| frequencies[c] += 1 }

  backtrack(frequencies)
end

private def backtrack(frequencies, result = 0)
  frequencies.each do |c, frequency|
    next unless frequency > 0

    frequencies[c] -= 1
    result = backtrack(frequencies, result + 1)
    frequencies[c] += 1
  end

  result
end
