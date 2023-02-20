# frozen_string_literal: true

# @param {String} s
# @return {Boolean}
def is_number(s)
  !(s =~ /^\s*[-|+]{0,1}\d+\.{0,1}\d*\s*$/).nil? ||
    !(s =~ /^\s*[-|+]{0,1}\d*\.{0,1}\d+\s*$/).nil? ||
    !(s =~ /^\s*[-|+]{0,1}\d+\.{0,1}\d*e[-|+]{0,1}\d+\s*$/).nil? ||
    !(s =~ /^\s*[-|+]{0,1}\d*\.{0,1}\d+e[-|+]{0,1}\d+\s*$/).nil?
end
