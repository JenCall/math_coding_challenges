# Problem 05

# 2520 is the smallest number that can be divided by 
# each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly 
# divisible by all of the numbers from 1 to 20?

# 01-Soultion - works with example:

(1..10000).each do |n|
    nums = []
    (1..10).to_a.each { |d| nums << n if n % d == 0 }
    puts n if nums.count == 10      
end