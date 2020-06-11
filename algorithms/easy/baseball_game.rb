# frozen_string_literal: true

# @param {String[]} ops
# @return {Integer}
def cal_points(ops)
  ops.each_with_object([]) do |op, result|
    case op
    when 'C'
      result.pop
    when 'D'
      result << result[-1] * 2
    when '+'
      result << result[-1] + result[-2]
    else
      result << op.to_i
    end
  end.sum
end
