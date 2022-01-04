# Problem 07

# 01 - Solution

require 'prime'

def find_10001_Prime(n)
    prime_nums = []
    prime_nums = Prime.each(200000) { |prime| prime_nums << prime }  
    prime_nums[n]
end

p find_10001_Prime(10000)