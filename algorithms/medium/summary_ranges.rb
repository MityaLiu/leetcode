# frozen_string_literal: true

# @param {Integer[]} nums
# @return {String[]}
def summary_ranges(nums)
  nums.each_with_object([]) do |num, result|
    if result.empty? || !ends_with?(result.last, (num - 1).to_s)
      result << num.to_s
    elsif result.last.include?('->')
      result[-1] = result.last.split('->').first + "->#{num}"
    else
      result[-1] += "->#{num}"
    end
  end
end

def ends_with?(str, suffix)
  str && suffix.respond_to?(:to_str) && str[-suffix.length, suffix.length] == suffix
end
