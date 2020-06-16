# frozen_string_literal: true

# @param {String} s
# @param {Integer} k
# @return {String}
def reverse_str(s, k)
  parts = s.scan(/.{1,#{Regexp.quote(k.to_s)}}/)
  parts.each_slice(2) { |a, _b| a.reverse! }
  parts.join
end
