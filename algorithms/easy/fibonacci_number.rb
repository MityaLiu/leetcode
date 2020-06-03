# frozen_string_literal: true

# @param {Integer} n
# @return {Integer}
def fib(n)
  return 0 if n.zero?
  return 1 if n == 1

  @h ||= {}

  @h[n - 2] ||= fib(n - 2)
  @h[n - 1] ||= fib(n - 1)

  @h[n - 2] + @h[n - 1]
end
