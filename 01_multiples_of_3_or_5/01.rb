# 01 
# If we list all the natural numbers below 10 that are multiples of 
# 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

# Solution:
multiples = []                  # empty array to save the multiples;

(1...1000).to_a.each do |n|     # loop through the array of the range 1 to 999;
    if n % 3 == 0 || n % 5 == 0 # condition to find the multiples;
        multiples << n          # saving the multiples;
    end
end
puts "Result: #{multiples.sum}" # sum the multiples direct on print statement;

