# Problem 03 - Largest Prime Factor
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143?

require 'prime'

# 01 - My Solution
def largest_prime(number)
    prime_factors = []
    Prime.each(10000) do |prime|    # if for 5 digits prime factor of 2 digits, so for 12 -> 5
        if prime * prime <= number
            if (number % prime == 0)
                prime_factors << prime 
            end
        end
    end
    p prime_factors[-1]
end
largest_prime(600851475143)

# 02 - optimized Solution in Ruby methods
def lpf(n)
    puts Prime.prime_division(n).last[0]
end
lpf(600851475143)
