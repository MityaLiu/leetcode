# frozen_string_literal: true

# @param {Integer[]} a
# @return {Integer[]}
def sorted_squares(a)
  a.map { |v| v**2 }.sort
end
