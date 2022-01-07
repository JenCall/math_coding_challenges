# Problem 10
# Find the sum of primes below a certain number

require 'prime'

# 01 - first Solution with prime library
def find_sum_below(n)
    prime_nums = []  
    prime_nums = Prime.each(n) { |prime| prime_nums << prime }.sum
end
p find_sum_below(2000000)

# 02 - second Solution - only for lower n
def find_sum_below_1
    (1..10).select {|x| (1..x).select{ |y| x % y == 0 }.size==2 }.sum
end
p find_sum_below_1