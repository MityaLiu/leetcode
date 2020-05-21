# frozen_string_literal: true

# @param {Integer[]} target
# @param {Integer} n
# @return {String[]}
def build_array(target, _n)
  index = 0

  (1..target.last).each_with_object([]) do |val, result|
    if val == target[index]
      index += 1
      result << 'Push'
    else
      result << 'Push'
      result << 'Pop'
    end
  end
end
