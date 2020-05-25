# frozen_string_literal: true

# @param {String} version1
# @param {String} version2
# @return {Integer}
def compare_version(version1, version2)
  s1 = version1.split('.')
  s2 = version2.split('.')

  max = [s1.size, s2.size].max

  max.times do |i|
    v1 = (s1[i] || 0).to_i
    v2 = (s2[i] || 0).to_i

    result = v1 <=> v2

    return result unless result.zero?
  end

  0
end
