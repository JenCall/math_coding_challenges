# Problem 03 - What is the largest prime factor?

require 'prime'

# 01 - My Solution
def largest_prime(number)
    prime_factors = []
    Prime.each(10000) do |prime|    # if 5 dgs -> pf <= 2dgs, so 12dgs -> <= 5dgs
        if prime * prime <= number
            if (number % prime == 0)
                prime_factors << prime 
            end
        end
    end
    p prime_factors[-1]
end
largest_prime(7000000)

# 02 - optimized Solution in Ruby methods
def lpf(n)
    puts Prime.prime_division(n).last[0]
end
lpf(7000000)
