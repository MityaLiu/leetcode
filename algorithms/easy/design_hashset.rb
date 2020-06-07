# frozen_string_literal: true

class MyHashSet
  attr_reader :set

  # Initialize your data structure here.
  def initialize
    @set = []
  end

  # :type key: Integer
  # :rtype: Void
  def add(key)
    set << key unless set.include?(key)
  end

  # :type key: Integer
  # :rtype: Void
  def remove(key)
    set.delete(key)
  end

  # Returns true if this set contains the specified element
  # :type key: Integer
  # :rtype: Boolean
  def contains(key)
    set.include?(key)
  end
end
