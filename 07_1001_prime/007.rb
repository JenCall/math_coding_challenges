# Problem 07

# 01 - Solution

require 'prime'

def find_10001_Prime(n)
    prime_nums = []
    Prime.each(200000) { |prime| prime_nums << prime }  
    p prime_nums[n]
end

find_10001_Prime(10000)