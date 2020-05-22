# frozen_string_literal: true

# rubocop:disable Lint/AssignmentInCondition
# @param {String} s
# @return {Integer}
def calculate(s)
  s.delete!(' ')

  numbers = s.scan(/\d+/).map(&:to_i)
  operations = s.scan(/\D/)

  while i = operations.index { |o| ['*', '/'].include?(o) }
    case operations.delete_at(i)
    when '*'
      numbers[i] *= numbers[i + 1]
    when '/'
      numbers[i] /= numbers[i + 1]
    end

    numbers.delete_at(i + 1)
  end

  operations.each do |o|
    case o
    when '+'
      numbers[0] += numbers[1]
    when '-'
      numbers[0] -= numbers[1]
    end

    numbers.delete_at(1)
  end

  numbers[0]
end
# rubocop:enable Lint/AssignmentInCondition
