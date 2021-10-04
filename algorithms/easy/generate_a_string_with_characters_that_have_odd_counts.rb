# frozen_string_literal: true

# @param {Integer} n
# @return {String}
def generate_the_string(n)
  return '' if n.zero?
  return 'a' if n == 1

  n.even? ? 'a' + ('b' * (n - 1)) : 'ab' + ('c' * (n - 2))
end
