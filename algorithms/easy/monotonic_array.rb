# frozen_string_literal: true

# @param {Integer[]} a
# @return {Boolean}
def is_monotonic(a)
  sorted = a.sort

  a == sorted || a == sorted.reverse
end
