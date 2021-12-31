# Problem 03 - Largest Prime Factor
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143?

require 'prime'
# number = 600851475143

# 01- my solution for not high numbers  
def largest_prime(number)
    prime_factors = []
    Prime.each(number) do |prime|
        if prime * prime <= number
            if (number % prime == 0)
                prime_factors << prime 
            end
        end
    end
    p prime_factors[-1]
end

largest_prime(13195)