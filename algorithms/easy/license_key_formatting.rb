# frozen_string_literal: true

# @param {String} s
# @param {Integer} k
# @return {String}
def license_key_formatting(s, k)
  s.delete('-').reverse.scan(/.{1,#{Regexp.quote(k.to_s)}}/).join('-').reverse.upcase
end
