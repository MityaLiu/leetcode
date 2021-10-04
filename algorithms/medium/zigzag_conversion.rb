# frozen_string_literal: true

# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
  return s if num_rows < 2

  number_of_chars = (num_rows * 2) - 2

  q = s.chars.each_with_object([]).with_index do |(c, result), i|
    div = i / number_of_chars
    rem = i % number_of_chars

    result[div] ||= [[]]

    if rem < num_rows
      result[div][0] << c
    else
      result[div][rem - num_rows + 1] ||= Array.new(num_rows)
      result[div][rem - num_rows + 1][number_of_chars - num_rows - rem] = c
    end
  end.flatten(1)

  result = ''

  num_rows.times do |i|
    q.each do |set|
      result += set[i] unless set[i].nil?
    end
  end

  result
end
