# frozen_string_literal: true

# @param {String[]} cpdomains
# @return {String[]}
def subdomain_visits(cpdomains)
  h = Hash.new(0)

  cpdomains.each do |cpdomain|
    left, right = cpdomain.split
    left = left.to_i

    h[right] += left

    right.count('.').times do
      index = right.index('.')
      right = right[index + 1..-1]

      h[right] += left
    end
  end

  h.map { |k, v| "#{v} #{k}" }
end
