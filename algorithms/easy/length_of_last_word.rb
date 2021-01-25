# frozen_string_literal: true

# @param {String} s
# @return {Integer}
def length_of_last_word(s)
  r = s.split
  r.empty? ? 0 : r.last.size
end
