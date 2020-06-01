# frozen_string_literal: true

# @param {String} s
# @return {String}
def remove_duplicates(s)
  loop do
    size = s.size
    s.gsub!(/(.)\1/, '')
    break if size == s.size
  end

  s
end
