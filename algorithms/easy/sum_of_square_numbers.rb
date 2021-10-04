# frozen_string_literal: true

# @param {Integer} c
# @return {Boolean}
def judge_square_sum(c)
  max = Math.sqrt(c).floor

  (0..max).each do |cos|
    sin = Math.sqrt(c - (cos**2))

    return true if sin % 1 == 0
  end

  false
end
