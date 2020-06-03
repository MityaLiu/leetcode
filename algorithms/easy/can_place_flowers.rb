# frozen_string_literal: true

# @param {Integer[]} flowerbed
# @param {Integer} n
# @return {Boolean}
def can_place_flowers(flowerbed, n)
  size = flowerbed.size

  c = flowerbed.each_with_index.count do |plot, i|
    next if plot == 1
    next unless (i.zero? || flowerbed[i - 1].zero?) && (i == size - 1 || flowerbed[i + 1].zero?)

    flowerbed[i] = 1
  end

  c >= n
end
