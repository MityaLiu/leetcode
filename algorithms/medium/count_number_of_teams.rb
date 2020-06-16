# frozen_string_literal: true

# @param {Integer[]} rating
# @return {Integer}
def num_teams(rating)
  size = rating.size
  count = 0

  (size - 2).times do |i|
    (i + 1..size - 2).each do |j|
      (j + 1..size - 1).each do |k|
        count += 1 if rating[i] > rating[j] && rating[j] > rating[k]
        count += 1 if rating[i] < rating[j] && rating[j] < rating[k]
      end
    end
  end

  count
end
