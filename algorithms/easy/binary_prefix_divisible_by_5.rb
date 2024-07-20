# frozen_string_literal: true

# @param {Integer[]} a
# @return {Boolean[]}
def prefixes_div_by5(a)
  val = 0

  a.map do |v|
    val <<= 1
    val += v

    (val % 5).zero?
  end
end
