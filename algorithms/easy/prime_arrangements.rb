# frozen_string_literal: true

# @param {Integer} n
# @return {Integer}
def num_prime_arrangements(n)
  count = numer_of_primes(n)

  factorial(count) * factorial(n - count) % 1000000007
end

private def factorial(n)
  (1..n).inject(1, :*)
end

private def numer_of_primes(n)
  (2..n).count { |num| prime?(num) }
end

private def prime?(num)
  (2...num).none? { |i| (num % i).zero? }
end
