# frozen_string_literal: true

# @param {Integer[]} group_sizes
# @return {Integer[][]}
def group_the_people(group_sizes)
  hash = Hash.new { |h, k| h[k] = [] }

  group_sizes.each_with_index do |group_size, i|
    hash[group_size] << i
  end

  hash.each_with_object([]) do |(group_size, people), result|
    people.each_slice(group_size) do |slice|
      result << slice
    end
  end
end
