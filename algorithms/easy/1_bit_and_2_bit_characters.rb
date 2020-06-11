# frozen_string_literal: true

# @param {Integer[]} bits
# @return {Boolean}
def is_one_bit_character(bits)
  str = bits.first(2).join

  case str
  when '11', '10'
    is_one_bit_character(bits[2..-1])
  when '01', '00'
    is_one_bit_character(bits[1..-1])
  when '1'
    false
  else
    !bits.size.zero?
  end
end
