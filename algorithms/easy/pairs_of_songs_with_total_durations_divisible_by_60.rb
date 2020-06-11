# frozen_string_literal: true

# @param {Integer[]} time
# @return {Integer}
def num_pairs_divisible_by60(time)
  count = Hash.new(0)

  time.sum do |duration1|
    remainder1 = duration1 % 60
    remainder2 = remainder1.zero? ? 0 : 60 - remainder1
    # returning first while modifying second
    count[remainder1].tap { count[remainder2] += 1 }
  end
end
