# Problem 03 - Largest Prime Factor
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143?

require 'prime'
prime = []
Prime.each(100) do |n|
    prime << n  #=> 2, 3, 5, 7, 11, ...., 97
end
p prime