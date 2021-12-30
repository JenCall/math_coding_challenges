# Problem 03 - Largest Prime Factor
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143?

require 'prime'
number = 13195

prime = []
Prime.each(number) do |n|
    prime << n  #=> 2, 3, 5, 7, 11, ...., 97
end

i = 0
prime_num = []

while prime[i] < number
    n = prime[i]
    if (number % n == 0)
        prime_num << n
        p prime_num[-1]
    end
    i += 1
end