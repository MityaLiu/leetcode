# frozen_string_literal: true

class RecentCounter
  attr_reader :pings

  def initialize
    @pings = []
  end

  # :type t: Integer
  # :rtype: Integer
  def ping(t)
    @pings << t
    @pings.slice!(0...(@pings.bsearch_index { |x| x >= t - 3000 }))
    pings.size
  end
end
