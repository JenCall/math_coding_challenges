# 01 
# If we list all the natural numbers below 10 that are multiples of 
# 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

# 01-mySolution:
# starting = Process.clock_gettime(Process::CLOCK_MONOTONIC)
# code:
multiples = []                  # empty array to save the multiples;

(1...1000).to_a.each do |n|     # loop through the array of the range 1 to 999;
    if n % 3 == 0 || n % 5 == 0 # condition to find the multiples;
        multiples << n          # saving the multiples;
    end
end
puts "Result: #{multiples.sum}" # sum the multiples direct on print statement;

# ending = Process.clock_gettime(Process::CLOCK_MONOTONIC)
# p elapsed = ending - starting     # 0.0001 seconds

# 02-suggestedSolution - more efficient solution
# starting = Process.clock_gettime(Process::CLOCK_MONOTONIC)
# code:
def sumDivisibleBy(target, n)   # function that takes the target and the number
    p = target / n              # math solution div target per n
    n * (p * (p + 1 )) / 2      # sum 1 then multiple by p then by n then div per 2
end
puts sumDivisibleBy(999, 3) + sumDivisibleBy(999, 5) - sumDivisibleBy(999, 15)

# ending = Process.clock_gettime(Process::CLOCK_MONOTONIC)
# p elapsed = ending - starting   # 6.99 seconds