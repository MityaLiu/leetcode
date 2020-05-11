# frozen_string_literal: true

# @param {String} s
# @param {Integer} k
# @return {Integer}
def longest_substring(s, k)
  return 0 if s.size < k

  s.each_char do |c|
    if s.count(c) < k
      return s.split(c).map do |t|
        longest_substring(t, k)
      end.max
    end
  end

  s.size
end
