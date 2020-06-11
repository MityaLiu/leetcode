# frozen_string_literal: true

# @param {Integer[]} distance
# @param {Integer} start
# @param {Integer} destination
# @return {Integer}
def distance_between_bus_stops(distance, start, destination)
  if start > destination
    distance.reverse!
    start = distance.size - start
    destination = distance.size - destination
  end

  [distance[start...destination].sum, distance[0...start].sum + distance[destination..-1].sum].min
end
