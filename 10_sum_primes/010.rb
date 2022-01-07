# Problem 10
# Find the sum of primes below a certain number

require 'prime'

def find_sum_below(n)
    prime_nums = []
    prime_nums = Prime.each(n) { |prime| prime_nums << prime }.sum
    prime_nums
end

p find_sum_below(2000000)