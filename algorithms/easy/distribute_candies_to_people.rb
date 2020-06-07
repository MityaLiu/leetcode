# frozen_string_literal: true

# @param {Integer} candies
# @param {Integer} num_people
# @return {Integer[]}
def distribute_candies(candies, num_people)
  result = Array.new(num_people, 0)

  n = 0
  i = 0

  while candies > 0
    n = [n + 1, candies].min

    candies -= n
    result[i % num_people] += n

    i += 1
  end

  result
end
