# frozen_string_literal: true

# @param {Integer[]} houses
# @param {Integer[]} heaters
# @return {Integer}
def find_radius(houses, heaters)
  houses.sort!
  heaters.sort!

  max_min_distance = 0
  j = 0

  houses.each do |house|
    distance = (heaters[j] - house).abs

    while j < heaters.size - 1
      new_distance = (heaters[j + 1] - house).abs
      break if new_distance > distance

      j += 1
      distance = new_distance
    end

    max_min_distance = [max_min_distance, distance].max
  end

  max_min_distance
end
