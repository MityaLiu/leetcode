# frozen_string_literal: true

# @param {Integer[]} a
# @return {Integer}
def repeated_n_times(a)
  n = a.size / 2
  frequencies = Hash.new(0)

  a.each do |v|
    frequencies[v] += 1
    return v if frequencies[v] == n
  end

  nil
end
