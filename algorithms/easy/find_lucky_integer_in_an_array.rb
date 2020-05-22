# frozen_string_literal: true

# @param {Integer[]} arr
# @return {Integer}
def find_lucky(arr)
  arr.sort!.reverse!

  arr.find { |a| arr.count(a) == a } || -1
end
