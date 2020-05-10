# frozen_string_literal: true

# @param {Integer} n
# @return {String}
def convert_to_title(n)
  alp = {}
  'A'.upto('Z').with_index { |c, i| alp[i] = c }

  sb = ''

  while n.positive?
    n -= 1
    ch = alp[n % 26]
    n /= 26
    sb += ch
  end

  sb.reverse
end
