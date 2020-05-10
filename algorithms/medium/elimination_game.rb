# frozen_string_literal: true

# @param {Integer} n
# @return {Integer}
def last_remaining(n)
  left = true
  remaining = n
  head = 1
  step = 1

  while remaining > 1
    head += step if left || remaining.odd?

    remaining /= 2
    step *= 2
    left = !left
  end

  head
end
