# frozen_string_literal: true

# @param {String} a
# @param {String} b
# @return {Integer}
def repeated_string_match(a, b)
  min = (b.size.to_f / a.size).ceil
  max = min + 1

  (min..max).each do |i|
    return i if (a * i).include?(b)
  end

  -1
end
