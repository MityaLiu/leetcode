# frozen_string_literal: true

# @param {String} str1
# @param {String} str2
# @return {String}
def gcd_of_strings(str1, str2)
  str1, str2 = [str1, str2].sort_by(&:length)

  size = str1.size

  (1..size).each do |fractions|
    str1.chars.each_cons(size / fractions) do |s|
      divider = s.join
      return divider if divider?(str1, divider) && divider?(str2, divider)
    end
  end

  ''
end

private def divider?(str, divider)
  str.scan(divider).size * divider.size == str.size
end
