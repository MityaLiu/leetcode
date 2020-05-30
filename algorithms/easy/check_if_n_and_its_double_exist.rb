# frozen_string_literal: true

# @param {Integer[]} arr
# @return {Boolean}
def check_if_exist(arr)
  arr.each_with_index.any? do |num, i|
    arr.each_with_index.any? { |v, j| i != j && v == num * 2 }
  end
end
