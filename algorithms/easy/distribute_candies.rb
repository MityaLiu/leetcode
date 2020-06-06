# frozen_string_literal: true

# @param {Integer[]} candies
# @return {Integer}
def distribute_candies(candies)
  candies.sort!

  n = candies.size

  number_of_ordinary_candies = candies.each_with_index.count { |c, i| i > 0 && c == candies[i - 1] }

  [n / 2, n - number_of_ordinary_candies].min
end
