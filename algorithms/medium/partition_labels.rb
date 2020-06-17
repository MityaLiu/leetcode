# frozen_string_literal: true

# @param {String} s
# @return {Integer[]}
def partition_labels(s)
  h = {}

  s.each_char.with_index do |c, i|
    if h[c]
      h[c][1] = i
    else
      h[c] = [i, i]
    end
  end

  compressed = []
  current = [0, 0]

  h.each_value do |v|
    if current[1] >= v[0]
      current[1] = [v[1], current[1]].max
    else
      compressed << current
      current = v
    end
  end

  compressed << current

  compressed.map { |range| range[1] - range[0] + 1 }
end
